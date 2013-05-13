#!/bin/bash
top=$(pwd)

# Clone PCL
git clone git://github.com/PointCloudLibrary/pcl.git

# Install dependencies
sudo apt-get install git-core mercurial-git cmake build-essential libusb-1.0.0-dev freeglut3-dev default-jdk doxygen libboost-all-dev libeigen3-dev libflann-dev libvtk5-dev libqhull-dev
cd $top/pcl/3rdparty/openni/source
sudo make install

# Build PCL
mkdir $top/pcl/build
cd $top/pcl/build
cmake -DCMAKE_BUILD_TYPE=Release ..
make

# Install PCL
cd $top/pcl/build
sudo make install
