#!/bin/bash

# Azure CLI
echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "Azure CLI installed successfully."

# Azure Storage Explorer
echo "Installing Azure Storage Explorer..."
wget https://go.microsoft.com/fwlink/?LinkId=722418 -O storageexplorer.deb
dpkg -i storageexplorer.deb
rm storageexplorer.deb
echo "Azure Storage Explorer installed successfully."

# Azure Functions Core Tools
echo "Installing Azure Functions Core Tools..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
apt update
sudo apt-get install azure-functions-core-tools-4 -y
echo "Azure Functions Core Tools installed successfully."

# Teams
echo "Installing Microsoft Teams..."
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list
apt update
apt install teams -y
echo "Microsoft Teams installed successfully."
