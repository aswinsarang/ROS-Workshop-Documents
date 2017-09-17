#!/bin/bash
#Copy this file to Home directory
#Open terminal and type the following commands
#chmod + ros_indigo_install.sh
#./ros_indigo_install
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall
mkdir -p ~/catkin_ws/src
cd catking_ws/src
catkin_init_workspace
cd ..
catkin_make
