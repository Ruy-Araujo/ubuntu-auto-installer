#!/bin/bash

# Função para imprimir mensagens destacadas
print_highlighted_message() {
  printf "\n************************************************************\n"
  echo "$1"
  printf "************************************************************\n\n"
}

# Pre-install 
chmod +x *.sh

# Basic Tools
print_highlighted_message "Installing Basic Tools..."
./basic_tools.sh
print_highlighted_message "Basic Tools installed successfully."


# infra-tools
print_highlighted_message "Installing Infra Tools..."
./infra_tools.sh
print_highlighted_message "Infra Tools installed successfully."

# Azure Tools
print_highlighted_message "Installing Azure Tools..."
./azure_tools.sh
print_highlighted_message "Azure Tools installed successfully."

# Data Tools
print_highlighted_message "Installing Data Tools..."
./data_tools.sh
print_highlighted_message "Data Tools installed successfully."

# Web Tools
print_highlighted_message "Installing Web Tools..."
./web_tools.sh
print_highlighted_message "Web Tools installed successfully."
