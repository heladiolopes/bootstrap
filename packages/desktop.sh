#!/bin/bash

echo "[desktop] Core Desktop (Hyprland)"

sudo_run pacman -S --needed --noconfirm \
  hyprland hyprlock hypridle hyprcursor hyprpaper hyprpicker hyprland-qtutils \
  waybar rofi-wayland kanshi swaync swayosd \
  firefox \
  qt5-wayland qt6-wayland \
  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk archlinux-xdg-menu \
  xdg-user-dirs xdg-user-dirs-gtk \
  cliphist gnome-keyring

yay -S --needed --noconfirm \
  hyprshot wlogout qview
