#!/bin/bash

# Change mirror from default to kakao
echo "Setting python3 as default"
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1

# Verify python version
echo "Python version:"
python --version