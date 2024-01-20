#!/bin/bash

sudo apt update

sudo apt upgrade -y

sudo apt install vim curl tree ufw unzip tmux calcurse \
    neofetch podman freecad keepassxc firefox chromium \
    smartmontools claws-mail claws-mail-fancy-plugin -y

# install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# install cura or different slicer

# install poetry
curl -sSL https://install.python-poetry.org | python3 -

# conf ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
# only if you need ssh
#sudo ufw allow ssh
sudo ufw enable

# conf vim
cp .vimrc ~/.vimrc
# install vim-plug https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# install plugins https://github.com/junegunn/vim-plug/wiki/tips
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
# install colorscheme badwolf https://github.com/riccione/badwolf
mkdir -p ~/.vim/colors
cp badwolf.vim ~/.vim/colors/

# conf bash
cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bashaliases
