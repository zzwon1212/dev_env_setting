#!/bin/bash

# Change mirror from default to kakao
echo "Setting mirror server..."
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list.d/ubuntu.sources

# Update soruce list
sudo apt update
sudo apt upgrade -y
