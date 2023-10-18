#!/bin/bash

# Make .kakao.list
echo -e "# kakao mirror: ubuntu 18.04 LTS
deb http://mirror.kakao.com/ubuntu/ bionic main restricted universe
deb http://mirror.kakao.com/ubuntu/ bionic-updates main restricted universe
deb http://mirror.kakao.com/ubuntu/ bionic-security main restricted universe
" >> /etc/apt/sources.list.d/kakao.list

# Update soruce list
sudo apt update -y