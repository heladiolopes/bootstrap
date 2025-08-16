#!/bin/bash

workdir=$(pwd)

mkdir -p ~/dev
git clone -b develop https://github.com/heladiolopes/dotfiles.git ~/dev/dotfiles

# Build bin
cd ~/dev/dotfiles/bin/source/random_values/
bash build.sh

# Source Dotfiles
cd ~/dev/dotfiles
stow -v \
  backgrounds bat bin btop git hypr \
  kanshi kitty nvim rofi swayosd tmux \
  userdirs waybar wlogout yazi zsh

