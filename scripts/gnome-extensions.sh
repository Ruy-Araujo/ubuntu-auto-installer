#!/bin/bash

highlighted_message() {
  message="$1" 
  echo "▁▂▃▅▆▓▒░ $message ░▒▓▆▅▃▂▁"
}

# Extension Manager
# highlighted_message "Installing Extension Manager"
# sudo apt-get install gnome-shell-extension-prefs -y
# highlighted_message "Extension Manager installed successfully"

# Create extensions folder
sudo mkdir -p ~/.local/share/gnome-shell/extensions

# bluetooth-quick-connect
highlighted_message "Installing bluetooth-quick-connect"
wget https://extensions.gnome.org/extension-data/bluetooth-quick-connectbjarosze.gmail.com.v34.shell-extension.zip
unzip bluetooth-quick-connectbjarosze.gmail.com.v34.shell-extension.zip -d ~/.local/share/gnome-shell/extensions/bluetooth-quick-connect@bjarosze.gmail.com/
rm bluetooth-quick-connectbjarosze.gmail.com.v34.shell-extension.zip
highlighted_message "bluetooth-quick-connect installed successfully"

# Clipboard Indicator
highlighted_message "Installing Clipboard Indicator"
wget https://extensions.gnome.org/extension-data/clipboard-indicatortudmotu.com.v47.shell-extension.zip
unzip clipboard-indicatortudmotu.com.v47.shell-extension.zip -d  ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/
rm clipboard-indicatortudmotu.com.v47.shell-extension.zip
highlighted_message "Clipboard Indicator installed successfully"

# Emoji Selector
highlighted_message "Installing Emoji Selector"
wget https://extensions.gnome.org/extension-data/emoji-selectormaestroschan.fr.v23.shell-extension.zip
unzip emoji-selectormaestroschan.fr.v23.shell-extension.zip -d  ~/.local/share/gnome-shell/extensions/emoji-selector@maestroschan.fr/
rm emoji-selectormaestroschan.fr.v23.shell-extension.zip
highlighted_message "Emoji Selector installed successfully"

# Sound Output Device Chooser
highlighted_message "Installing Sound Output Device Chooser"
wget https://extensions.gnome.org/extension-data/sound-output-device-chooserkgshank.net.v43.shell-extension.zip
unzip sound-output-device-chooserkgshank.net.v43.shell-extension.zip -d  ~/.local/share/gnome-shell/extensions/sound-output-device-chooser@kgshank.net/
rm sound-output-device-chooserkgshank.net.v43.shell-extension.zip
highlighted_message "Sound Output Device Chooser installed successfully"

# Vitals
highlighted_message "Installing Vitals"
wget https://extensions.gnome.org/extension-data/VitalsCoreCoding.com.v61.shell-extension.zip
unzip VitalsCoreCoding.com.v61.shell-extension.zip -d  ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com/
rm VitalsCoreCoding.com.v61.shell-extension.zip
highlighted_message "Vitals installed successfully"

# WinTile
highlighted_message "Installing WinTile"
wget https://extensions.gnome.org/extension-data/wintilenowsci.com.v15.shell-extension.zip
unzip wintilenowsci.com.v15.shell-extension.zip -d  ~/.local/share/gnome-shell/extensions/wintile@nowsci.com/
rm wintilenowsci.com.v15.shell-extension.zip
highlighted_message "WinTile installed successfully"
