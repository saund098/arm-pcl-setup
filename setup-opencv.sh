#!/bin/bash
top=$(pwd)

# Download and extract opencv 2.4.5
#wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.5/opencv-2.4.5.tar.gz
#tar -zxvf opencv-2.4.5.tar.gz
#rm -rf opencv-2.4.5.tar.gz

# Install dependencies
sudo apt-get install cmake build-essential

# Build OpenCV
mkdir $top/opencv-2.4.5/build
cd $top/opencv-2.4.5/build
cmake ..
#make

# Install OpenCV
#cd $top/opencv-2.4.5/build
#sudo make install
