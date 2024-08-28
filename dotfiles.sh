#!/bin/bash

GITHUB_USERNAME="riccione"

# install chezmoi as single binary to .bin directory and pull dotfiles from
# github
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME


# install Plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
