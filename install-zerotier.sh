#!/bin/bash

# Script title and information
echo "ZeroTier One Auto-Installation Script"
echo "This script will install ZeroTier One on your Ubuntu system."

# Check root privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script requires root privileges. Please run with sudo."
  exit 1
fi

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install essential dependencies
echo "Installing essential dependencies..."
sudo apt install -y libssl-dev cargo clang build-essential

# Clone ZeroTier One repository
echo "Cloning ZeroTier One repository..."
git clone https://github.com/zerotier/ZeroTierOne.git ZeroTier-One_Build

# Move to build directory
cd ZeroTier-One_Build

# Make the script executable (if necessary)
if [ ! -x make-linux.mk ]; then
  echo "Making build script executable..."
  chmod +x make-linux.mk
fi

# Build and install ZeroTier One
echo "Building and installing ZeroTier One..."
make

# Verify installation and service status
echo "Verifying installation..."
if command -v zerotier-one >/dev/null 2>&1; then
  echo "ZeroTier One installation successful!"
  echo "Checking service status..."
  sudo systemctl status zerotier-one
else
  echo "ZeroTier One installation may not have been successful."
  echo "Please check the build output for any errors."
fi

# (Optional) Enable and start ZeroTier One service
# Uncomment the following lines to enable and start the service automatically
echo "Enabling and starting ZeroTier One service..."
sudo systemctl enable zerotier-one
# sudo systemctl start zerotier-one

# Exit script
exit 0
