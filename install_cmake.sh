#!/bin/bash

# Install necessary dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential

# Install CMake
echo "Installing CMake..."
sudo apt install -y cmake

# Verify installed versions
cmake --version # Ubuntu 18.04 -> CMake 3.10.2