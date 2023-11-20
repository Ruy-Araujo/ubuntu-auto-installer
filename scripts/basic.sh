#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# Curl
highlighted_message "Installing Curl..."
sudo apt install curl -y
highlighted_message "Curl installed successfully."

# Git
highlighted_message "Installing Git..."
sudo apt install git -y
highlighted_message "Git installed successfully."

# Snap
highlighted_message "Installing Snap..."
sudo apt install snapd -y
highlighted_message "Snap installed successfully."