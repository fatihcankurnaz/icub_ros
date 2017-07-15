# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kovan: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikovan:/home/fatih/kovan_test2/src/kovan/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kovan_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_custom_target(_kovan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kovan" "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kovan
  "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kovan
)

### Generating Services

### Generating Module File
_generate_module_cpp(kovan
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kovan
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kovan_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kovan_generate_messages kovan_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_dependencies(kovan_generate_messages_cpp _kovan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kovan_gencpp)
add_dependencies(kovan_gencpp kovan_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kovan_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kovan
  "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kovan
)

### Generating Services

### Generating Module File
_generate_module_eus(kovan
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kovan
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kovan_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kovan_generate_messages kovan_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_dependencies(kovan_generate_messages_eus _kovan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kovan_geneus)
add_dependencies(kovan_geneus kovan_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kovan_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kovan
  "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kovan
)

### Generating Services

### Generating Module File
_generate_module_lisp(kovan
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kovan
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kovan_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kovan_generate_messages kovan_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_dependencies(kovan_generate_messages_lisp _kovan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kovan_genlisp)
add_dependencies(kovan_genlisp kovan_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kovan_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kovan
  "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kovan
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kovan
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kovan
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kovan_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kovan_generate_messages kovan_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_dependencies(kovan_generate_messages_nodejs _kovan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kovan_gennodejs)
add_dependencies(kovan_gennodejs kovan_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kovan_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kovan
  "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kovan
)

### Generating Services

### Generating Module File
_generate_module_py(kovan
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kovan
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kovan_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kovan_generate_messages kovan_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fatih/kovan_test2/src/kovan/msg/Pose.msg" NAME_WE)
add_dependencies(kovan_generate_messages_py _kovan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kovan_genpy)
add_dependencies(kovan_genpy kovan_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kovan_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kovan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kovan
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kovan_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kovan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kovan
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kovan_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kovan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kovan
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kovan_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kovan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kovan
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kovan_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kovan)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kovan\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kovan
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kovan_generate_messages_py std_msgs_generate_messages_py)
endif()
