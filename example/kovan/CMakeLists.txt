cmake_minimum_required(VERSION 2.8.3)
project(kovan)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS genmsg message_generation std_msgs)
add_message_files(FILES Pose.msg)
generate_messages(DEPENDENCIES std_msgs)
catkin_package(DEPENDS message_runtime)
