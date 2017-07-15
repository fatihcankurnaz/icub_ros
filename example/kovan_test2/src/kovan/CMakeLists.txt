cmake_minimum_required(VERSION 2.8.3)
project(kovan)


find_package(catkin REQUIRED genmsg std_msgs message_generation  turtlesim roscpp geometry_msgs)
add_message_files(FILES Pose.msg)
generate_messages(DEPENDENCIES std_msgs)
catkin_package(DEPENDS message_runtime)

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(random_mover random_mover.cpp)
add_executable(sampler sampler.cpp)
add_executable(follower followe.cpp)
target_link_libraries(random_mover ${catkin_LIBRARIES})
target_link_libraries(sampler ${catkin_LIBRARIES})
target_link_libraries(follower ${catkin_LIBRARIES})
