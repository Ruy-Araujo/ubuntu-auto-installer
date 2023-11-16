#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# Brave Browser
highlighted_message "Installing Brave Browser..."
curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list > /dev/null
apt update
apt install brave-browser-beta -y
highlighted_message "Brave Browser installed successfully."

# Discord
highlighted_message "Installing Discord..."
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i discord.deb
rm discord.deb
highlighted_message "Discord installed successfully."

highlighted_message "Brave Browser and Discord installed successfully."

# Notion  
highlighted_message "Installing Notion..."
snap install notion-snap
highlighted_message "Notion installed successfully."

