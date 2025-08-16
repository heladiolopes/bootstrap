#!/bin/bash

set -euo pipefail

# Check if yay is already installed
if need yay; then
  echo "[aur] yay already installed"
  return
fi

# Install yay
echo "[aur] Installing yay (AUR helper)"
sudo_run 'pacman -S --needed --noconfirm git base-devel stow'
tmpd=$(mktemp -d)
git clone https://aur.archlinux.org/yay.git "$tmpd/yay"
( cd "$tmpd/yay" && makepkg -si --noconfirm )
rm -rf "$tmpd"
