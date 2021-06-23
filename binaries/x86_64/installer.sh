#!/bin/sh

INSTALLER=$PWD

cd /opt/
sudo mkdir power-can/

cd $INSTALLER
sudo cp icon.png /opt/power-can/
sudo cp power-can /opt/power-can/
sudo cp power-can.desktop /usr/share/applications/