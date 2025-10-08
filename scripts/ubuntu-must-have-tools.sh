#!/bin/bash

# Ubuntu Must-Have Tools Installation Script
# This script installs a curated list of applications and tools for a new Ubuntu system.

echo "=================================================="
echo "Ubuntu Must-Have Tools Installer"
echo "This will install a large set of applications."
echo "Please ensure you have a stable internet connection."
echo "=================================================="
echo

# Update and Upgrade the system first
echo "[1/4] Updating system package lists..."
sudo apt update

echo "[2/4] Upgrading existing packages..."
sudo apt upgrade -y

# Install the tools
echo "[3/4] Installing essential tools and applications..."
sudo apt install -y \
    curl wget htop vim nano git tree tmux rsync unzip unrar \
    ufw gnome-tweaks build-essential python3-pip default-jdk \
    vlc ffmpeg gimp inkscape chromium-browser thunderbird \
    filezilla libreoffice okular cmatrix lolcat neofetch

# Enable the firewall (UFW)
echo "[4/4] Configuring basic firewall (UFW)..."
sudo ufw enable
echo "Firewall is now active."

# Clean up unused packages
echo "Cleaning up..."
sudo apt autoremove -y

echo "=================================================="
echo "Installation complete!"
echo "Most tools are now installed and ready to use."
echo "=================================================="
echo "Note: Some software like the latest Node.js might require"
echo "additional Personal Package Archives (PPAs) to be added."
echo "Please refer to their official installation guides."