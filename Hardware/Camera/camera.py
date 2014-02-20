import os
import sys
import cv
import time
import zbar

def imageCapture(showImage = False):
	camera_index = 0
	capture = cv.CaptureFromCAM(camera_index)
	time.sleep(0.1)

	img = cv.QueryFrame(capture)
	if(showImage == True):
		cv.imshow('Test image', img)


	return img

def getBarcode():
	img = imageCapture()
	img = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY )

	width = img.width
	height = img.height
	raw = img.tostring()

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

	if (image.symbol != None):
		return image.symbol
	else
		return ""

if __name__ == '__main__':
   	print imageCapture()

