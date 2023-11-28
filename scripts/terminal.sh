#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# ZSH
highlighted_message "Installing zsh..."
sudo apt install zsh -y
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
mkdir -p ~/.local/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P ~/.local/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P ~/.local/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P ~/.local/share/fonts/
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ~/.local/share/fonts/
# Clone the theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
highlighted_message "Powerlevel10k Theme installed successfully."

# zsh-snap
highlighted_message "Installing zsh-snap..."
echo '[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh' >> ~/.zshrc

# zsh-syntax-highlighting
highlighted_message "Installing zsh-syntax-highlighting..."
sudo apt install zsh-syntax-highlighting
highlighted_message "zsh-syntax-highlighting installed successfully."