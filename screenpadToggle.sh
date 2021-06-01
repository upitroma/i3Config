#!/bin/bash

#REQUIRES KERNAL PATCH TO RUN
#https://github.com/Plippo/asus-wmi-screenpad

filepath="/sys/class/leds/asus::screenpad/brightness"
if [ $(cat $filepath) = "255" ]; then
	echo 0 > $filepath
else
	echo 255 > $filepath
fi
