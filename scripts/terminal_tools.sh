#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# ZSH
highlighted_message "Installing zsh..."

sudo apt install zsh -y
# Set zsh as default shell
chsh -s $(which zsh)

highlighted_message "zsh installed successfully."

# Oh My Zsh
highlighted_message "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Enable python plugin
sed -i 's/plugins=(git)/plugins=(git python)/g' ~/.zshrc
highlighted_message "Oh My Zsh installed successfully."

# Powerlevel10k
highlighted_message "Installing Powerlevel10k Theme..."
# Install the recommended font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.tar.xz
tar -xf Meslo.tar.xz -C ~/.local/share/fonts/
# Clone the theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
# Remove the archive
rm Meslo.tar.xz
highlighted_message "Powerlevel10k Theme installed successfully."

# zsh autosuggestions
highlighted_message "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc
highlighted_message "zsh-autosuggestions installed successfully."


