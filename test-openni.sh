#!/bin/bash
top=$(pwd)

# Remove gspca
modules=$(lsmod | grep gspca | awk '{print $4;}')
for module in $modules
do
  echo "Removing $module..."
  sudo rmmod $module
done

# Run the NiSimpleRead example
cd $top/OpenNI/Platform/Linux/Redist/OpenNI-Bin-Dev-Linux-x64-v1.5.4.0/Samples/Bin/*-Release
./Sample-NiSimpleRead
