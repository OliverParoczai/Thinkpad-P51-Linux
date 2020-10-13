#!/bin/bash

#This script is made for running BB (Bumblebee - the NVIDIA Hybrid Graphics Manager) with an external display output. Without this script you can't use the HDMI/DP ports of the laptop while under Bumblebee.

optirun true #Enables BB

intel-virtual-output & #Creates a new virtual display (ID 8) for the external output

while sleep 60; do DISPLAY=:8 xset -dpms s off; done #Disables the screensaver, this one was the hardest to figure out
