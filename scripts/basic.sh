#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# Update
highlighted_message "Updating Ubuntu..."
sudo apt update -y
sudo apt upgrade -y
highlighted_message "Ubuntu updated successfully."

# Curl
highlighted_message "Installing Curl..."
sudo apt install curl -y
highlighted_message "Curl installed successfully."

# Git
highlighted_message "Installing Git..."
sudo apt install git -y
highlighted_message "Git installed successfully."

