#!/bin/bash

# Change mirror from default to kakao
echo "Setting mirror server..."
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

# Update soruce list
sudo apt update -y
sudo apt upgrade -y
