# Install script for directory: /media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/contours.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/convert_cascade.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/delaunay.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/fback_c.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/morphology.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/motempl.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/polar_transforms.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/pyramid_segmentation.c"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/adaptiveskindetector.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/bgfg_codebook.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/blobtrack_sample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/facedetect.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/find_obj.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/find_obj_calonder.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/find_obj_ferns.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/latentsvmdetect.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/mser_sample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/mushroom.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/one_way_sample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/smiledetect.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/tree_engine.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/airplane.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/baboon.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/baboon200.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/baboon200_rotated.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/cat.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/fruits.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/lena.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/one_way_train_0000.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/one_way_train_0001.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/stuff.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/box.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/box_in_scene.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/JCB.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/puzzle.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/agaricus-lepiota.data"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/waveform.data"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/build_all.sh"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/cvsample.dsp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/c/facedetect.cmd"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

