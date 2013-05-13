#!/bin/bash
top=$(pwd)

# Clone OpenNI unstable branch
git clone git://github.com/OpenNI/OpenNI.git
cd $top/OpenNI
git checkout unstable

# Install dependencies
sudo apt-get install build-essential libusb-1.0.0-dev freeglut3-dev default-jdk #doxygen

# Build OpenNI
cd $top/OpenNI/Platform/Linux/CreateRedist
./RedistMaker

# Install OpenNI
cd $top/OpenNI/Platform/Linux/Redist/OpenNI-Bin-*
sudo ./install.sh
