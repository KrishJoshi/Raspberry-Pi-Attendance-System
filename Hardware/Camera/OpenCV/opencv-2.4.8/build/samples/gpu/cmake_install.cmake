# Install script for directory: /media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu/performance" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/performance/performance.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/performance/tests.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/performance/performance.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/alpha_comp.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/bgfg_segm.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/brox_optical_flow.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/cascadeclassifier.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/cascadeclassifier_nvidia_api.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/driver_api_multi.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/driver_api_stereo_multi.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/farneback_optical_flow.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/generalized_hough.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/hog.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/houghlines.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/morphology.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/multi.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/opengl.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/optical_flow.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/opticalflow_nvidia_api.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/pyrlk_optical_flow.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/stereo_match.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/stereo_multi.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/super_resolution.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/surf_keypoint_matcher.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/video_reader.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/video_writer.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/aloeL.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/aloeR.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/basketball1.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/basketball2.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/road.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/rubberwhale1.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/rubberwhale2.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/tsucuba_left.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/gpu/tsucuba_right.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

