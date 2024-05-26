#!/bin/bash

# Script title and information
echo "ZeroTier GUI Auto-Installation Script"
echo "This script will install ZeroTier GUI on your Ubuntu system."

# Check root privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script requires root privileges. Please run with sudo."
  exit 1
fi

# Navigate to downloads directory
echo "Navigating to downloads directory..."
cd ~/Downloads

# Clone ZeroTier GUI repository
echo "Cloning ZeroTier GUI repository..."
git clone https://github.com/tralph3/ZeroTier-GUI.git Zerotier-GUI_Build

# Move to build directory
cd Zerotier-GUI_Build

# Make the script executable (if necessary)
if [ ! -x make_deb.sh ]; then
  echo "Making build script executable..."
  chmod +x make_deb.sh
fi

# Build the DEB package
echo "Building DEB package..."
./make_deb.sh

# Install the DEB package
echo "Installing DEB package..."
sudo apt install ./ZeroTier-GUI.deb

# (Optional) Install Python dependencies (if not already installed)
echo "Checking Python dependencies..."
if ! command -v python3 >/dev/null 2>&1; then
  echo "Installing Python3..."
  sudo apt install python3
fi

if ! command -v python3-tk >/dev/null 2>&1; then
  echo "Installing Python3-TK..."
  sudo apt install python3-tk
else
  echo "Installing Tkinter via pip..."
  pip install tkinter
fi

# Verify installation
echo "Verifying installation..."
if command -v zerotier-gui >/dev/null 2>&1; then
  echo "ZeroTier GUI installation successful!"
  echo "You can launch ZeroTier GUI from the Applications menu or by running 'zerotier-gui' in the terminal."
else
  echo "ZeroTier GUI installation may not have been successful."
  echo "Please check the build output for any errors."
fi

# Exit script
exit 0
