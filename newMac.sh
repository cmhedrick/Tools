#!/bin/sh
# REQUIRES MACCHANGER TO BE INSTALLED
sudo ifconfig wlp2s0 down
sudo macchanger -m 00:20:91:12:34:56 wlp2s0
sudo ifconfig wlp2s0 up
sudo ifconfig eno1 down
sudo macchanger -m 00:20:91:12:34:55 eno1
sudo ifconfig eno1 up

