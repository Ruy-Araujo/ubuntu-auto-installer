#!/bin/bash

# Função para imprimir mensagens destacadas
print_highlighted_message() {
  printf "\n************************************************************\n"
  echo "$1"
  printf "************************************************************\n\n"
}

# Brave Browser
print_highlighted_message "Installing Brave Browser..."
curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list > /dev/null
apt update
apt install brave-browser-beta -y
print_highlighted_message "Brave Browser installed successfully."

# Discord
print_highlighted_message "Installing Discord..."
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i discord.deb
rm discord.deb
print_highlighted_message "Discord installed successfully."

print_highlighted_message "Brave Browser and Discord installed successfully."
