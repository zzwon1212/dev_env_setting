#!/bin/bash

# Install RSO
echo "Installing ROS..."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update -y
sudo apt install -y ros-melodic-desktop-full
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

# Install Python3
sudo apt install python3-pip python3-all-dev python3-rospkg
sudo apt install ros-melodic-desktop-full --fix-missing

# Edit .bashrc
echo -e "
source /opt/ros/melodic/setup.bash

# Setting environment variables for ROS tasks
alias cm='cd ~/xycar_ws && catkin_make'
source /opt/ros/melodic/setup.bash
source ~/xycar_ws/devel/setup.bash
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost
" >> ~/.bashrc

source ~/.bashrc

# Verify installed versions
echo "ROS version:"
rosversion -d
