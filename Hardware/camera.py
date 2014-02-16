import os
import sys

imageName = sys.argv[1]
print os.path.dirname(__file__)
for imageName in range(1, 5):
	imageName = str(imageName)
	os.system("zbarimg -q "+ imageName +".jpg > "+imageName+".txt")
	if os.path.exists(imageName + ".txt"):
	        strqrcode = open(imageName + ".txt", 'r').read()
	        print strqrcode
	else:
	        print "QR-Code text file not found"