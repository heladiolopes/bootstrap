#!/bin/bash

set -euo pipefail

echo "[develop] Terminal utils"
sudo_run pacman -S --needed --noconfirm \
  zsh kitty wget curl unzip inetutils \
  fd eza fzf ripgrep zoxide bat jq \
  btop man tldr less whois fastfetch

echo "[develop] Code Editor"
sudo_run pacman -S --needed --noconfirm \
  tmux neovim lazygit

yay -S --needed --noconfirm \
  gitmux

echo "[develop] language servers"
sudo_run pacman -S --needed --noconfirm \
  rustup clang \
  rust-analyzer gopls bash-language-server lua-language-server marksman
