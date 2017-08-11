cmake_minimum_required(VERSION 2.8.3)
project(tester)


find_package(catkin REQUIRED COMPONENTS genmsg message_generation std_msgs roscpp geometry_msgs tf2_msgs tf  sensor_msgs nav_msgs kovan)

catkin_package()
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(target target.cpp)
target_link_libraries(target ${catkin_LIBRARIES})
