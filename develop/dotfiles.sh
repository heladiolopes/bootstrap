#!/bin/bash

set -euo pipefail

workdir=$(pwd)

mkdir -p ~/dev
if [ ! -d ~/dev/dotfiles ]; then
  git clone -b develop https://github.com/heladiolopes/dotfiles.git ~/dev/dotfiles
else
  git -C ~/dev/dotfiles pull
fi

# Build bin
cd ~/dev/dotfiles/bin/source/random_values/
bash build.sh

# Source Dotfiles
cd ~/dev/dotfiles
stow -v \
  backgrounds bat bin btop git hypr \
  kanshi kitty nvim rofi swayosd tmux \
  userdirs waybar wlogout yazi zsh

cd "$workdir"

