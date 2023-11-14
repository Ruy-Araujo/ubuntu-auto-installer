#!/bin/bash

print_highlighted_message() {
  printf "\n************************************************************\n"
  echo "$1"
  printf "************************************************************\n\n"
}

# Update
print_highlighted_message "Updating Ubuntu..."
sudo apt update -y
sudo apt upgrade -y
print_highlighted_message "Ubuntu updated successfully."

# Curl
print_highlighted_message "Installing Curl..."
sudo apt install curl -y
print_highlighted_message "Curl installed successfully."

# Git
print_highlighted_message "Installing Git..."
sudo apt install git -y
print_highlighted_message "Git installed successfully."

