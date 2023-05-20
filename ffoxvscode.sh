#!/bin/bash

# Update APT package repository
sudo apt update

# Install Firefox
sudo apt install firefox-esr -y

# Install dependencies for VSCode
sudo apt install curl gpg -y
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update

# Install VSCode
sudo apt install code -y

# Remove temporary file
rm microsoft.gpg

echo "Installation complete!"

