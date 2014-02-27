import time
import zbar
import io
import picamera
import cv2
import numpy as np
import config

def imageCapture():

	# Create the in-memory stream
	stream = io.BytesIO()

	with picamera.PiCamera() as camera:
	    camera.start_preview()
	    time.sleep(2)
	    camera.capture(stream, format='jpeg')

	# Construct a numpy array from the stream
	data = np.fromstring(stream.getvalue(), dtype=np.uint8)

	# "Decode" the image from the array, preserving colour
	img = cv2.imdecode(data, 1)

	# OpenCV returns an array with data in BGR order. If you want RGB instead
	# use the following...
	img = img[:, :, ::-1]

	if(config.Testing == True):
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
	    if(config.Testing == True):
	    	print 'decoded', symbol.type, 'symbol', '"%s"' % symbol.data

	if (image.symbol != None):
		return image.symbol
	else
		return ""

if __name__ == '__main__':
   	print imageCapture()

