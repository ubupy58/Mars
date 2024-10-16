#!/bin/bash

# Check for root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "You must run this script as root."
    exit 1
fi

# Create a new user (replace 'ancible' with the desired username)
apt install sudo
useradd ancible

# Add the new user to the sudo group
usermod -aG sudo ancible

# Create a sudoers file for the new user with appropriate permissions
echo "ancible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ancible
chmod 0440 /etc/sudoers.d/ancible

echo "custome message: User 'ancible' created and added to sudo group with sudo privileges."
