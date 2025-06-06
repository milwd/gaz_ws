# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "assignment_2_2024: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iassignment_2_2024:/root/gaz_ws/devel/share/assignment_2_2024/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(assignment_2_2024_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" "assignment_2_2024/PlanningActionGoal:assignment_2_2024/PlanningActionResult:assignment_2_2024/PlanningActionFeedback:geometry_msgs/Point:geometry_msgs/Pose:actionlib_msgs/GoalStatus:geometry_msgs/Quaternion:assignment_2_2024/PlanningGoal:std_msgs/Header:assignment_2_2024/PlanningResult:assignment_2_2024/PlanningFeedback:geometry_msgs/PoseStamped:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:assignment_2_2024/PlanningGoal:std_msgs/Header:geometry_msgs/PoseStamped:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:assignment_2_2024/PlanningResult"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" "geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:assignment_2_2024/PlanningFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" ""
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_custom_target(_assignment_2_2024_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_2_2024" "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_cpp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
)

### Generating Services

### Generating Module File
_generate_module_cpp(assignment_2_2024
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(assignment_2_2024_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(assignment_2_2024_generate_messages assignment_2_2024_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_cpp _assignment_2_2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_2_2024_gencpp)
add_dependencies(assignment_2_2024_gencpp assignment_2_2024_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_2_2024_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_eus(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
)

### Generating Services

### Generating Module File
_generate_module_eus(assignment_2_2024
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(assignment_2_2024_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(assignment_2_2024_generate_messages assignment_2_2024_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_eus _assignment_2_2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_2_2024_geneus)
add_dependencies(assignment_2_2024_geneus assignment_2_2024_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_2_2024_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_lisp(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
)

### Generating Services

### Generating Module File
_generate_module_lisp(assignment_2_2024
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(assignment_2_2024_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(assignment_2_2024_generate_messages assignment_2_2024_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_lisp _assignment_2_2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_2_2024_genlisp)
add_dependencies(assignment_2_2024_genlisp assignment_2_2024_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_2_2024_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_nodejs(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
)

### Generating Services

### Generating Module File
_generate_module_nodejs(assignment_2_2024
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(assignment_2_2024_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(assignment_2_2024_generate_messages assignment_2_2024_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_nodejs _assignment_2_2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_2_2024_gennodejs)
add_dependencies(assignment_2_2024_gennodejs assignment_2_2024_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_2_2024_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)
_generate_msg_py(assignment_2_2024
  "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
)

### Generating Services

### Generating Module File
_generate_module_py(assignment_2_2024
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(assignment_2_2024_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(assignment_2_2024_generate_messages assignment_2_2024_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment_2_2024/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment_2_2024_generate_messages_py _assignment_2_2024_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_2_2024_genpy)
add_dependencies(assignment_2_2024_genpy assignment_2_2024_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_2_2024_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_2_2024
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(assignment_2_2024_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(assignment_2_2024_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment_2_2024
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(assignment_2_2024_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(assignment_2_2024_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_2_2024
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(assignment_2_2024_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(assignment_2_2024_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment_2_2024
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(assignment_2_2024_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(assignment_2_2024_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_2_2024
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(assignment_2_2024_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(assignment_2_2024_generate_messages_py geometry_msgs_generate_messages_py)
endif()
