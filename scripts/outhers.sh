#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# KeepassXC
highlighted_message "Installing KeepassXC..."
sudo add-apt-repository ppa:phoerious/keepassxc -y
sudo apt-get update
sudo apt-get install keepassxc -y
highlighted_message "KeepassXC installed successfully"
