import time
import zbar
import io
import picamera
from PIL import Image
import config

def imageCapture():
	# Create the in-memory stream
	stream = io.BytesIO()

	with picamera.PiCamera() as camera:
	    camera.resolution = (512,384)
	    camera.capture(stream, format='jpeg')

	stream.seek(0)

	return Image.open(stream).convert('L')

def getBarcode():

	img = imageCapture()
	img.show()
	width, height = img.size
	 
	raw = img.tostring()

	# wrap image data
	image = zbar.Image(width, height, 'Y800', raw)

	# create a reader
	scanner = zbar.ImageScanner()

	# configure the reader
	scanner.parse_config('enable')
	# scan the image for barcodes
	scanner.scan(image)
	
	imageData = ""
	# extract results
	for symbol in image:
		imageData = symbol.data
		#if config.Testing == True:
	    		# do something useful with results
	   		# print 'decoded', symbol.type, 'symbol', '"%s"' % symbol.data

	return imageData


if __name__ == '__main__':
   	print imageCapture()

