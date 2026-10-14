#!/bin/bash

# Instala uma única aplicação. Usado pelo menu interativo; os scripts de
# categoria continuam sendo usados pela instalação completa.
item="$1"

case "$item" in
  curl) sudo apt install curl -y ;;
  git) sudo apt install git -y ;;
  snapd) sudo apt install snapd -y ;;
  vscode) sudo snap install code --classic ;;
  postman) sudo snap install postman ;;
  python-pip) sudo apt install python3-pip -y ;;
  python-virtualenv) sudo apt install python3-virtualenv -y ;;
  docker)
    sudo apt-get update -y
    sudo apt-get install ca-certificates curl gnupg -y
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update -y
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
    ;;
  kubectl) curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl && chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/kubectl ;;
  helm) curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash ;;
  azure-cli) curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash ;;
  storage-explorer) sudo snap install storage-explorer ;;
  azure-functions)
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
    sudo apt update && sudo apt-get install azure-functions-core-tools-4 -y
    ;;
  azure-data-studio) wget https://sqlopsbuilds.azureedge.net/stable/c7c2b2f21505562d21972d4c135119d00806db4f/azuredatastudio-linux-1.47.0.deb && sudo dpkg -i azuredatastudio-linux-1.47.0.deb && rm azuredatastudio-linux-1.47.0.deb ;;
  teams) curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - && echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list > /dev/null && sudo apt update && sudo apt install teams -y ;;
  google-cloud-cli)
    sudo apt-get update
    sudo apt-get install -y ca-certificates gnupg curl
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor --yes -o /usr/share/keyrings/cloud.google.gpg
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list > /dev/null
    sudo apt-get update && sudo apt-get install -y google-cloud-cli
    ;;
  dbeaver) wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add - && echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list > /dev/null && sudo apt update && sudo apt install dbeaver-ce -y ;;
  brave) curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list > /dev/null && sudo apt update && sudo apt install brave-browser-beta -y ;;
  discord) wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" && sudo dpkg -i discord.deb && rm discord.deb ;;
  notion) sudo snap install notion-snap ;;
  bluetooth-quick-connect|clipboard-indicator|emoji-selector|sound-output-device-chooser|vitals|wintile)
    declare -A urls=(
      [bluetooth-quick-connect]='https://extensions.gnome.org/extension-data/bluetooth-quick-connectbjarosze.gmail.com.v34.shell-extension.zip'
      [clipboard-indicator]='https://extensions.gnome.org/extension-data/clipboard-indicatortudmotu.com.v47.shell-extension.zip'
      [emoji-selector]='https://extensions.gnome.org/extension-data/emoji-selectormaestroschan.fr.v23.shell-extension.zip'
      [sound-output-device-chooser]='https://extensions.gnome.org/extension-data/sound-output-device-chooserkgshank.net.v43.shell-extension.zip'
      [vitals]='https://extensions.gnome.org/extension-data/VitalsCoreCoding.com.v61.shell-extension.zip'
      [wintile]='https://extensions.gnome.org/extension-data/wintilenowsci.com.v15.shell-extension.zip'
    )
    declare -A folders=([bluetooth-quick-connect]='bluetooth-quick-connect@bjarosze.gmail.com' [clipboard-indicator]='clipboard-indicator@tudmotu.com' [emoji-selector]='emoji-selector@maestroschan.fr' [sound-output-device-chooser]='sound-output-device-chooser@kgshank.net' [vitals]='Vitals@CoreCoding.com' [wintile]='wintile@nowsci.com')
    tmp_file=$(mktemp --suffix=.zip)
    mkdir -p "$HOME/.local/share/gnome-shell/extensions"
    wget -O "$tmp_file" "${urls[$item]}" && unzip "$tmp_file" -d "$HOME/.local/share/gnome-shell/extensions/${folders[$item]}"
    rm -f "$tmp_file"
    ;;
  keepassxc) sudo add-apt-repository ppa:phoerious/keepassxc -y && sudo apt-get update && sudo apt-get install keepassxc -y ;;
  pavucontrol) sudo apt-get install pavucontrol -y ;;
  obs-studio) sudo apt-get install ffmpeg -y && sudo add-apt-repository ppa:obsproject/obs-studio -y && sudo apt-get update && sudo apt-get install obs-studio -y ;;
  vlc) sudo snap install vlc ;;
  gimp) sudo snap install gimp ;;
  zsh) sudo apt install zsh -y ;;
  oh-my-zsh) sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && sed -i 's/plugins=(git)/plugins=(git python)/g' "$HOME/.zshrc" ;;
  powerlevel10k)
    mkdir -p "$HOME/.local/share/fonts"
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P "$HOME/.local/share/fonts/"
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P "$HOME/.local/share/fonts/"
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P "$HOME/.local/share/fonts/"
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P "$HOME/.local/share/fonts/"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' "$HOME/.zshrc"
    ;;
  zsh-snap) echo '[[ -r ~/Repos/znap/znap.zsh ]] || git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh' >> "$HOME/.zshrc" ;;
  zsh-syntax-highlighting) sudo apt install zsh-syntax-highlighting -y ;;
  *) echo "Item desconhecido: $item" >&2; exit 2 ;;
esac
