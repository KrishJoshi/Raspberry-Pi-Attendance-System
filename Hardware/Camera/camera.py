import os
import sys

imageName = sys.argv[1]


for imageName in range(1, 11):
	imageName = str(imageName)
	output = os.system("zbarimg --raw -q "+ imageName +".jpg ")
	