#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}


# Vscode
highlighted_message "Installing Vscode..."
sudo snap install code --classic
highlighted_message "Vscode installed successfully."

# Postman
highlighted_message "Installing Postman..."
sudo snap install postman
highlighted_message "Postman installed successfully."

# Python PIP
highlighted_message "Installing Python PIP..."
sudo apt install python3-pip -y
highlighted_message "Python PIP installed successfully."

# Python Virtualenv
highlighted_message "Installing Python Virtualenv..."
sudo apt install python3-virtualenv -y
highlighted_message "Python Virtualenv installed successfully."

