#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}


# PulseAudio Volume Control
highlighted_message "Installing PulseAudio Volume Control..."
sudo apt-get install pavucontrol -y
highlighted_message "PulseAudio Volume Control installed successfully"

# Obs Studio
highlighted_message "Installing OBS Studio..."
sudo apt-get install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt-get update
sudo apt-get install obs-studio -y
highlighted_message "OBS Studio installed successfully"

# VLC Media Player
highlighted_message "Installing VLC Media Player..."
sudo snap install vlc
highlighted_message "VLC Media Player installed successfully"

# Gimp
highlighted_message "Installing Gimp..."
sudo snap install gimp
highlighted_message "Gimp installed successfully"
