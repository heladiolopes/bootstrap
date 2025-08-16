#!/bin/bash

set -euo pipefail

echo "[pacman] Configuring pacman (/etc/pacman.conf)"
# Enable Colors and multiple downloads
sudo_run 'sed -i \
  -e "s/^#Color/Color/" \
  -e "s/^#ParallelDownloads.*/ParallelDownloads = 10/" \
  /etc/pacman.conf'

# Add fun and color to the pacman installer
if ! grep -q "ILoveCandy" /etc/pacman.conf; then
  sudo sed -i '/^\[options\]/a Color\nILoveCandy' /etc/pacman.conf
fi

# Enable multilib
if ! grep -q "^\[multilib\]" /etc/pacman.conf || grep -q "^#\[multilib\]" /etc/pacman.conf; then
  sudo_run 'sed -i \
    -e "/^#\[multilib\]/,/#Include/s/^#//" \
    -e "/^\[multilib\]/,/^Include/ s/^#//" \
    /etc/pacman.conf'
fi

sudo_run 'pacman -Sy --needed --noconfirm archlinux-keyring'

