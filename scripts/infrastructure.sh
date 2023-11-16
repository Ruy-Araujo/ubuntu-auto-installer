#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# Docker
highlighted_message "Installing Docker Enginer..."

# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

highlighted_message "Docker Enginer installed successfully."


# Kubectl
highlighted_message "Installing Kubectl..."
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
highlighted_message "Kubectl installed successfully."

# Helm
highlighted_message "Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
highlighted_message "Helm installed successfully."