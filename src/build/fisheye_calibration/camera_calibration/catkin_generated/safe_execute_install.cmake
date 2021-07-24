execute_process(COMMAND "/home/enping/boids/src/build/fisheye_calibration/camera_calibration/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/enping/boids/src/build/fisheye_calibration/camera_calibration/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
