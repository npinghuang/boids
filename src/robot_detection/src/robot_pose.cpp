#include <ros/ros.h>
#include <robot_detection/Robot.h>
#include <robot_detection/RobotArray.h>
#include <aruco_pose/Marker.h>
#include <aruco_pose/MarkerArray.h>
#include <geometry_msgs/Pose.h>

#include <std_msgs/Int32MultiArray.h>
 
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
using namespace std;

ros::Subscriber aruco_array;
ros::Publisher Pose_robot;
robot_detection::RobotArray robots_array;
robot_detection::Robot robot;
std::vector<float> rpy{0, 0, 0};
std::vector<float>  quaternion_to_theta(std::vector<float> &RPY, float x, float y, float z, float w){
// float quaternion_to_theta(float x, float y, float z, float w){
  tf2::Quaternion q(x, y, z, w);
  tf2::Matrix3x3 m(q);
  double roll, pitch, yaw;
  m.getRPY(roll, pitch, yaw);
  RPY[0] = roll;
  RPY[1] = pitch;
  RPY[2] = yaw;
  return RPY;
}
void markersCallback(const aruco_pose::MarkerArray::ConstPtr &markers){
    robots_array.robots.resize(2);   
    // ROS_INFO("sub");
    if (!markers->markers.empty()){
        ROS_INFO("number of markers : [%lu]", markers -> markers.size());
        // ROS_INFO("I heard marker: [%d], [%f]", markers->markers[0].id, markers->markers[0].pose.position.x);
    }
    for( int i = 0; i < markers -> markers.size(); i++){
        robot.id=markers->markers[i].id;
        robot.pose = markers->markers[i].pose;
        robots_array.robots.push_back(robot);
        // robot.id.clear();
        // ROS_INFO("id [%d], x : [%f]", robot.id , robot.pose.position.x);
        double yaww;
        rpy = quaternion_to_theta(rpy, robot.pose.orientation.x, robot.pose.orientation.y, robot.pose.orientation.z, robot.pose.orientation.w);
        ROS_INFO(" [%d] : roll [%f]  pitch [%f] yaw [%f] ",  robot.id, rpy[0], rpy[1], rpy[2]);
        switch(markers->markers[i].id ){
          case 0: {
            ROS_INFO(" [%d] :  yaw [%f] ",  robot.id,  rpy[2]);
            break;
          }
          case 1: {
            float tmp; 
            tmp = rpy[1] + M_PI;
            if ( tmp > M_PI){
              tmp = tmp - 2* M_PI;
            }
            ROS_INFO(" [%d] :  p + 180 [%f] ",  robot.id,  tmp);
            break;
          }
          case 2: {
            float tmp; 
            tmp = rpy[1] - M_PI / 2; //+180 + 90 = -90 
            if ( tmp > M_PI){
              tmp = tmp - 2* M_PI;
            }
            ROS_INFO(" [%d] :  p - 90 [%f] ",  robot.id,  tmp);
            break;
          }
          case 3: {
            ROS_INFO(" [%d] :  pitch [%f] ",  robot.id,  rpy[1]);
            break;
          }
          case 4: {
            float tmp; 
            tmp = rpy[1] + M_PI / 2;
            if ( tmp > M_PI){
              tmp = tmp - 2* M_PI;
            }
            ROS_INFO(" [%d] :  pitch + 90  [%f] ",  robot.id,  tmp);
            break;
          }
        }

    }
    // ROS_INFO("-------------");
    Pose_robot.publish(robots_array);
    robots_array.robots.clear();
}

int main(int argc, char* argv[])
{
  // This must be called before anything else ROS-related
  ros::init(argc, argv, "robot_pose");

  // Create a ROS node handle
  ros::NodeHandle n;

  // aruco = n.subscribe("aruco_detect/markers", 1000,  aruco_markers);
  aruco_array= n.subscribe("aruco_detect/markers", 1000, markersCallback);
  Pose_robot = n.advertise<robot_detection::RobotArray>("pose_robot", 1);
  ROS_INFO("Hello, World!");

  ros::Rate loop_rate(100);
  while (ros::ok()){
    ros::spinOnce();
    loop_rate.sleep();
  }
  // Don't exit the program.
  ros::spin();
}