# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "assignment2_part1: 8 messages, 1 services")

set(MSG_I_FLAGS "-Iassignment2_part1:/root/gaz_ws/src/assignment2_part1/msg;-Iassignment2_part1:/root/gaz_ws/devel/share/assignment2_part1/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(assignment2_part1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" ""
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" "assignment2_part1/PlanningActionGoal:assignment2_part1/PlanningGoal:geometry_msgs/Quaternion:assignment2_part1/PlanningActionResult:assignment2_part1/PlanningResult:geometry_msgs/Pose:assignment2_part1/PlanningActionFeedback:assignment2_part1/PlanningFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" "assignment2_part1/PlanningGoal:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:assignment2_part1/PlanningResult"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:assignment2_part1/PlanningFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Point"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" ""
)

get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_custom_target(_assignment2_part1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment2_part1" "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/msg/posit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_cpp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)

### Generating Services
_generate_srv_cpp(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
)

### Generating Module File
_generate_module_cpp(assignment2_part1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(assignment2_part1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(assignment2_part1_generate_messages assignment2_part1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_cpp _assignment2_part1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment2_part1_gencpp)
add_dependencies(assignment2_part1_gencpp assignment2_part1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment2_part1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/msg/posit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)
_generate_msg_eus(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)

### Generating Services
_generate_srv_eus(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
)

### Generating Module File
_generate_module_eus(assignment2_part1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(assignment2_part1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(assignment2_part1_generate_messages assignment2_part1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_eus _assignment2_part1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment2_part1_geneus)
add_dependencies(assignment2_part1_geneus assignment2_part1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment2_part1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/msg/posit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)
_generate_msg_lisp(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)

### Generating Services
_generate_srv_lisp(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
)

### Generating Module File
_generate_module_lisp(assignment2_part1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(assignment2_part1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(assignment2_part1_generate_messages assignment2_part1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_lisp _assignment2_part1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment2_part1_genlisp)
add_dependencies(assignment2_part1_genlisp assignment2_part1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment2_part1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/msg/posit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)
_generate_msg_nodejs(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)

### Generating Services
_generate_srv_nodejs(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
)

### Generating Module File
_generate_module_nodejs(assignment2_part1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(assignment2_part1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(assignment2_part1_generate_messages assignment2_part1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_nodejs _assignment2_part1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment2_part1_gennodejs)
add_dependencies(assignment2_part1_gennodejs assignment2_part1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment2_part1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/msg/posit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)
_generate_msg_py(assignment2_part1
  "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)

### Generating Services
_generate_srv_py(assignment2_part1
  "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
)

### Generating Module File
_generate_module_py(assignment2_part1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(assignment2_part1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(assignment2_part1_generate_messages assignment2_part1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/msg/posit.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv" NAME_WE)
add_dependencies(assignment2_part1_generate_messages_py _assignment2_part1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment2_part1_genpy)
add_dependencies(assignment2_part1_genpy assignment2_part1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment2_part1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment2_part1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(assignment2_part1_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(assignment2_part1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(assignment2_part1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignment2_part1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(assignment2_part1_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(assignment2_part1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(assignment2_part1_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment2_part1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(assignment2_part1_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(assignment2_part1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(assignment2_part1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignment2_part1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(assignment2_part1_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(assignment2_part1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(assignment2_part1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment2_part1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(assignment2_part1_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(assignment2_part1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(assignment2_part1_generate_messages_py std_msgs_generate_messages_py)
endif()
