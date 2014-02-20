import os
import sys
import cv
import time
import zbar

def imageCapture(showImage = False):
	camera_index = 0
	capture = cv.CaptureFromCAM(camera_index)
	time.sleep(0.1)

	frame = cv.QueryFrame(capture)
	if(showImage == True):
		cv.imshow('Test image', frame)
	width = frame.width
	height = frame.height
	raw = frame.tostring()

	# wrap image data
	image = zbar.Image(width, height, 'Y800', raw)

	# create a reader
	scanner = zbar.ImageScanner()

	# configure the reader
	scanner.parse_config('enable')
	# scan the image for barcodes
	scanner.scan(image)

	# extract results
	for symbol in image:
	    # do something useful with results
	    print 'decoded', symbol.type, 'symbol', '"%s"' % symbol.data
	return image[0].data
	

