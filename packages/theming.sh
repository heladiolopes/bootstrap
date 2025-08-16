#!/bin/bash

echo "[theming] Fonts & Themin"

sudo_run pacman -S --needed --noconfirm \
  ttf-font-awesome ttf-jetbrains-mono-nerd ttf-opensans noto-fonts ttf-droid ttf-roboto \
  breeze breeze5 breeze-gtk papirus-icon-theme nwg-look

yay -S --needed --noconfirm \
  qt5ct-kde qt6ct-kde

# TODO: configure themes QT & GTK
