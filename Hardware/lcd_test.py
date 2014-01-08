pin_rs=4
pin_e=24
pins_db=[23, 17, 18, 22]

import RPi.GPIO as GPIO
from time import sleep

def delayMicroseconds(self, microseconds):
        seconds = microseconds / float(1000000)        # divide microseconds by 1 million for seconds
        sleep(seconds)


GPIO.setmode(GPIO.BCM)
GPIO.setup(pin_e, GPIO.OUT)
GPIO.setup(pin_rs, GPIO.OUT)

for pin in pins_db:
  print(pin)
  GPIO.setup(pin, GPIO.OUT)
  GPIO.output(pin, True)

GPIO.output(pin_rs, True)
GPIO.output(pin_e, True)
sleep(1)