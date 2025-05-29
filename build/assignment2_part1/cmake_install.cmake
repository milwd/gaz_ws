# Install script for directory: /root/gaz_ws/src/assignment2_part1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/gaz_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/msg" TYPE FILE FILES "/root/gaz_ws/src/assignment2_part1/msg/posit.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/srv" TYPE FILE FILES "/root/gaz_ws/src/assignment2_part1/srv/last_destination.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/action" TYPE FILE FILES "/root/gaz_ws/src/assignment2_part1/action/Planning.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/msg" TYPE FILE FILES
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningAction.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionGoal.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionResult.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningActionFeedback.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningGoal.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningResult.msg"
    "/root/gaz_ws/devel/share/assignment2_part1/msg/PlanningFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/cmake" TYPE FILE FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/assignment2_part1-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/gaz_ws/devel/include/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/gaz_ws/devel/share/roseus/ros/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/gaz_ws/devel/share/common-lisp/ros/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/gaz_ws/devel/share/gennodejs/ros/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/gaz_ws/devel/lib/python3/dist-packages/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/gaz_ws/devel/lib/python3/dist-packages/assignment2_part1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/assignment2_part1.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/cmake" TYPE FILE FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/assignment2_part1-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1/cmake" TYPE FILE FILES
    "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/assignment2_part1Config.cmake"
    "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/assignment2_part1Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment2_part1" TYPE FILE FILES "/root/gaz_ws/src/assignment2_part1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/bug_as.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/go_to_point_service.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/lastdestination.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/userdestination.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/wall_follow_service.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/wall_follow_service2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/assignment2_part1" TYPE PROGRAM FILES "/root/gaz_ws/build/assignment2_part1/catkin_generated/installspace/bug_experiment.py")
endif()

