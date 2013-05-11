#!/bin/bash
top=$(pwd)

# Clone PCL
git clone git://github.com/PointCloudLibrary/pcl.git

# Install dependencies
sudo apt-get install cmake build-essential libboost-all-dev libeigen3-dev libflann-dev libvtk5-dev libqhull-dev #doxygen

# Build PCL
mkdir $top/pcl/build
cd $top/pcl/build
cmake -DCMAKE_BUILD_TYPE=Release ..
make

# Install PCL
cd $top/pcl/build
sudo make install
