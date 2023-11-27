#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}


# Azure CLI
highlighted_message "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
highlighted_message "Azure CLI installed successfully."

# Azure Storage Explorer
highlighted_message "Installing Azure Storage Explorer..."
sudo snap install storage-explorer
highlighted_message "Azure Storage Explorer installed successfully."

# Azure Functions Core Tools
highlighted_message "Installing Azure Functions Core Tools..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
apt update
sudo apt-get install azure-functions-core-tools-4 -y
highlighted_message "Azure Functions Core Tools installed successfully."

# Azure Data Studio
highlighted_message "Installing Azure Data Studio..."
wget https://sqlopsbuilds.azureedge.net/stable/c7c2b2f21505562d21972d4c135119d00806db4f/azuredatastudio-linux-1.47.0.deb
sudo dpkg -i azuredatastudio-linux-1.47.0.deb
rm azuredatastudio-linux-1.47.0.deb
highlighted_message "Azure Data Studio installed successfully."

# Teams
highlighted_message "Installing Microsoft Teams..."
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list
apt update
apt install teams
highlighted_message "Microsoft Teams installed successfully."
