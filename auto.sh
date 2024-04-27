#!/bin/bash

sudo apt update

sudo apt upgrade -y

sudo apt install vim curl tree ufw unzip tmux calcurse \
    neofetch podman freecad keepassxc firefox chromium \
    smartmontools claws-mail claws-mail-fancy-plugin \
    fzf foliate -y

# add veracrypt

# install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# install cura or different slicer

# install poetry
curl -sSL https://install.python-poetry.org | python3 -

# install dnbeaver
# download *.deb
# sudo apt install -f dbeaver*.deb

# conf ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
# only if you need ssh
#sudo ufw allow ssh
sudo ufw enable

# restore dotfiles using chezmoi
