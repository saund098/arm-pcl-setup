#!/bin/bash
top=$(pwd)

# Clone SensorKinect unstable branch
git clone git://github.com/saund098/SensorKinect
cd $top/SensorKinect
git checkout unstable

# Install dependencies
sudo apt-get install build-essential libusb-1.0.0-dev freeglut3-dev default-jdk #doxygen

# Build SensorKinect
cd $top/SensorKinect/Platform/Linux/CreateRedist
./RedistMaker

# Install OpenNI
cd $top/SensorKinect/Platform/Linux/Redist/Sensor-Bin-*
sudo ./install.sh
