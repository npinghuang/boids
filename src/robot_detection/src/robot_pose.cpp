#include <ros/ros.h>
#include "ros/time.h"
#include <robot_detection/Robot.h>
#include <robot_detection/RobotArray.h>
#include <aruco_pose/Marker.h>
#include <aruco_pose/MarkerArray.h>
#include <geometry_msgs/Pose.h>
 
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
using namespace std;

ros::Subscriber aruco_array;
ros::Publisher Pose_robot;

std::vector<float> rpy{0, 0, 0};
std::vector<float>  quaternion_to_theta(std::vector<float> &RPY, float x, float y, float z, float w){
// float quaternion_to_theta(float x, float y, float z, float w){
  tf2::Quaternion q(x, y, z, w);
  tf2::Matrix3x3 m(q);
  double roll, pitch, yaw;
  if ( x == 0.00 && y == 0.00 && z == 0.00 && w == 0.00){
    RPY[0] = 0.00;
    RPY[1] = 0.00;
    RPY[2] = 0.00;
  }
  else{
    m.getRPY(roll, pitch, yaw);
    RPY[0] = roll;
    RPY[1] = pitch;
    RPY[2] = yaw;
  }
  // ROS_INFO("xyzq %f %f %f %f", x, y, z, w);
  // ROS_INFO("RPY %f %f %f ", RPY[0], RPY[1], RPY[2]);
  return RPY;
}  
geometry_msgs::Point pose_transform_all( geometry_msgs::Point pose){
  //to use porportion to adjust error in length
  float p_1 = 4.8;
  float p_2 = 3.8;
  // if (pose.x < 10){
  //   pose.x = pose.x * (p_1 +1); 
  // }
  // else if (pose.x > 10){
  //   pose.x = pose.x * p_2;
  // }
  // if (pose.y < 10){
  //   pose.y = pose.y * p_1; 
  // }
  // else if (pose.y > 10){
  //   pose.y = pose.y * p_2; 
  // }
  // if (pose.z < 10){
  //   pose.z = pose.z * p_1; 
  // }
  // else if (pose.z > 10){
  //   pose.z = pose.z * p_2; 
  // }
  pose.x = pose.x * 10; 
  pose.y = pose.y * 10; 
  pose.z = pose.z * 10; 


  return pose;
}
void markersCallback(const aruco_pose::MarkerArray::ConstPtr &markers){
  robot_detection::RobotArray robots_array;
  robot_detection::Robot robot;
  std::vector<int> robot_status{0, 0, 0, 0, 0}; // record which robot has been seen
  if (!markers->markers.empty()){
    ROS_INFO("number of markers : [%lu]", markers -> markers.size());
    // ROS_INFO("I heard marker: [%d], [%f]", markers->markers[0].id, markers->markers[0].pose.position.x);
  }
  for( int i = 0; i < markers -> markers.size(); i++){
    // determine orientation of the robot
    double yaww;
    ROS_INFO("xyzq %f %f %f %f ",  markers->markers[i].pose.orientation.x, markers->markers[i].pose.orientation.y, markers->markers[i].pose.orientation.z, markers->markers[i].pose.orientation.w);
    rpy = quaternion_to_theta(rpy, markers->markers[i].pose.orientation.x, markers->markers[i].pose.orientation.y, markers->markers[i].pose.orientation.z, markers->markers[i].pose.orientation.w);
    // ROS_INFO(" [%d] : roll [%f]  pitch [%f] yaw [%f] ",  robot.id, rpy[0], rpy[1], rpy[2]);
    _Float32 tmp;   
    switch(markers->markers[i].id % 5){
      case 0: {
        tmp = rpy[2];
        ROS_INFO(" [%d] :  yaw [%f] ",  markers->markers[i].id,  rpy[2]);
        break;
      }
      case 1: {
        tmp = rpy[1] + M_PI;
        if ( tmp > M_PI){
          tmp = tmp - 2* M_PI;
        }
        ROS_INFO(" [%d] :  p + 180 [%f] ",  markers->markers[i].id,  tmp);
        break;
      }
      case 2: {
        tmp = rpy[1] - M_PI / 2; //+180 + 90 = -90 
        if ( tmp > M_PI){
          tmp = tmp - 2* M_PI;
        }
        ROS_INFO(" [%d] :  p - 90 [%f] ",  markers->markers[i].id,  tmp);
        break;
      }
      case 3: {
        tmp = rpy[1];
        ROS_INFO(" [%d] :  pitch [%f] ",  markers->markers[i].id,  rpy[1]);
        break;
      }
      case 4: {
        tmp = rpy[1] + M_PI / 2;
        if ( tmp > M_PI){
          tmp = tmp - 2* M_PI;
        }
        ROS_INFO(" [%d] :  pitch + 90  [%f] ", markers->markers[i].id,  tmp);
        break;
      }
    }
    robot.id = markers->markers[i].id / 5;       // determine which robot
    ROS_INFO("robot  [%d]",  robot.id);
    int robot_index; // the index of previous robot info in robot array
    if ( robot.id <= 4 ){ // determine if the marker is one of our robot
      if ( robot_status[robot.id] == 1){ // it means that i have seen more than one marker of this robot
        for ( robot_index = 0; robot_index < 4; robot_index ++){
          if ( robot.id == robots_array.robots[robot_index].id){
            ROS_INFO("seen this robot!");
            robot.pose.position.x = (robots_array.robots[robot_index].pose.position.x + robot.pose.position.x)/2;
            robot.pose.position.y = (robots_array.robots[robot_index].pose.position.y + robot.pose.position.y)/2;
            robot.pose.position.z = (robots_array.robots[robot_index].pose.position.z + robot.pose.position.z)/2;
            robots_array.robots[robot_index].orientation = (robots_array.robots[robot_index].orientation + tmp)/2;
            break;
          }
        }
      }
      else{ // first time seeing this robot
        robot.pose = markers->markers[i].pose;
        robot.pose.position = pose_transform_all(robot.pose.position);
        robot.orientation = tmp;
        // ROS_INFO("orientation %f %f", float(tmp), robot.orientation);
        robot_status[robot.id] = 1;
        robots_array.robots.push_back(robot);
      }
    }
    else{ // the aruco marker doesn't belonged to our robots
      ROS_ERROR("spy marker! id : [%d]", markers->markers[i].id);
    }
    ROS_INFO("-------------");
  }
  robots_array.header.stamp = ros::Time::now();
  robots_array.header.frame_id = "robot position";
  Pose_robot.publish(robots_array);
}

int main(int argc, char* argv[])
{
  // This must be called before anything else ROS-related
  ros::init(argc, argv, "robot_pose");
  ROS_INFO("robot pose initialized");
  ros::NodeHandle n;

  aruco_array= n.subscribe("aruco_detect/markers", 1000, markersCallback);
  Pose_robot = n.advertise<robot_detection::RobotArray>("pose_robot", 1);

  ros::Rate loop_rate(10);
  while (ros::ok()){
    ros::spinOnce();
    loop_rate.sleep();
  }
  // Don't exit the program.
  ros::spin();
}