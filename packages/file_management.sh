#!/bin/bash

echo "[file_management] Filemanagement & KDE"

sudo_run pacman -S --needed --noconfirm \
  dolphin dolphin-plugins ark kio-admin \
  polkit-kde-agent kde-cli-tools ffmpegthumbs

# TODO: add dolphin configuration
