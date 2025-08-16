#!/bin/bash

set -euo pipefail

echo "[utilities] Desktop Utilities"

sudo_run pacman -S --needed --noconfirm \
  brightnessctl playerctl pamixer \
  fcitx5 fcitx5-gtk fcitx5-qt \
  blueberry bluez bluez-utils

if pacman -Q bluez >/dev/null 2>&1; then
  echo "[utilities] Enabling Bluetooth"
  sudo_run 'systemctl enable --now bluetooth.service'
fi

