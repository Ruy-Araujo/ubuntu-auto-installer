#!/bin/bash

# Função para imprimir mensagens destacadas
print_highlighted_message() {
  printf "\n************************************************************\n"
  echo "$1"
  printf "************************************************************\n\n"
}

# DBeaver
print_highlighted_message "Installing DBeaver..."
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | tee /etc/apt/sources.list.d/dbeaver.list
apt update
apt install dbeaver-ce -y
print_highlighted_message "Docker installed DBeaver."