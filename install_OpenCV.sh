#!/bin/bash

# Install necessary dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential cmake git libgtk-3-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev libv4l-dev

# Install opencv-python
echo "Installing opencv-python..."
sudo apt install -y python3-pip
pip3 install scikit-build
pip3 install opencv-python

# Download OpenCV
echo "Downloading OpenCV..."
mkdir -p ~/workspace/OpenCV && cd ~/workspace/OpenCV
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
mkdir -p ~/workspace/OpenCV/opencv/build && cd ~/workspace/OpenCV/opencv/build

# Build OpenCV
echo "Building OpenCV..."
# Try -GNinja later \
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D BUILD_opencv_python=ON \
    -D BUILD_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/workspace/OpenCV/opencv_contrib/modules \
    ..
make -j7

# Install OpenCV
echo "Installng OpenCV..."
sudo make install

# Verify installed versions
echo "OpenCV version:"
pkg-config --modversion opencv4
