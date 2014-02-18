# Install script for directory: /media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/3calibration.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/bagofwords_classification.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/bgfg_gmg.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/bgfg_segm.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/brief_match_test.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/build3dmodel.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/calibration.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/calibration_artificial.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/camshiftdemo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/chamfer.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/connected_components.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/contours2.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/convexhull.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/cout_mat.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/delaunay2.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/demhist.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/descriptor_extractor_matcher.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/detection_based_tracker_sample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/detector_descriptor_evaluation.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/detector_descriptor_matcher_evaluation.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/dft.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/distrans.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/drawing.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/edge.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/em.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/fabmap_sample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/facerec_demo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/fback.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/ffilldemo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/filestorage.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/fitellipse.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/freak_demo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/gencolors.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/generic_descriptor_match.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/grabcut.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/houghcircles.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/houghlines.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/hybridtrackingsample.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/image.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/image_sequence.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/imagelist_creator.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/inpaint.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/intelperc_capture.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/kalman.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/kmeans.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/laplace.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/latentsvm_multidetect.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/letter_recog.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/linemod.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/lkdemo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/logpolar_bsm.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/matcher_simple.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/matching_to_many_images.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/meanshift_segmentation.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/minarea.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/morphology2.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/opencv_version.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping_video.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/openni_capture.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pca.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/peopledetect.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/phase_corr.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/points_classifier.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/retinaDemo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/rgbdodometry.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/segment_objects.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/select3dobj.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/simpleflow_demo.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/squares.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/starter_imagelist.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/starter_video.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/stereo_calib.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/stereo_match.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/stitching.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/stitching_detailed.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/tvl1_optical_flow.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/video_dmtx.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/video_homography.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/videostab.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/watershed.cpp"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/baboon.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/board.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/building.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/fruits.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left01.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left02.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left03.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left04.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left05.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left06.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left07.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left08.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left09.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left11.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left12.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left13.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/left14.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/lena.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right01.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right02.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right03.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right04.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right05.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right06.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right07.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right08.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right09.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right11.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right12.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right13.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/right14.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/stuff.jpg"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/logo.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/logo_in_clutter.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic1.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic2.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic3.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic4.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic5.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/pic6.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/templ.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/tsukuba_l.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/tsukuba_r.png"
    "/media/psf/Home/Dropbox/Year 3/3rd-Year-Project/Hardware/Camera/OpenCV/opencv-2.4.8/samples/cpp/letter-recognition.data"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

