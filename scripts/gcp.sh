#!/bin/bash

highlighted_message() {
  message="$1"
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

highlighted_message "Installing Google Cloud CLI..."
sudo apt-get update
sudo apt-get install -y ca-certificates gnupg curl
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor --yes -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list > /dev/null
sudo apt-get update
sudo apt-get install -y google-cloud-cli
highlighted_message "Google Cloud CLI installed successfully."
