#!/bin/bash

echo "[display_manager] Display Manager SDDM"

sudo_run pacman -S --needed --noconfirm \
  sddm

echo "[display_manager] Enabling SDDM display manager"
sudo_run 'systemctl enable sddm'

echo "[display_manager] Change SDDM Theme"
wget -O /tmp/eucalyptus-drop.tag.gz https://gitlab.com/Matt.Jolly/sddm-eucalyptus-drop/-/archive/v2.0.0/sddm-eucalyptus-drop-v2.0.0.tar.gz
sddmthemeinstaller --install /tmp/eucalyptus-drop.tag.gz
sudo_run cp assets/sddm/minimalist-bridge.jpg /usr/share/sddm/themes/eucalyptus-drop/Backgrounds
sudo_run cp assets/sddm/theme.conf /usr/share/sddm/themes/eucalyptus-drop
sudo_run mkdir -p /etc/sddm.conf.d
sudo_run cp assets/sddm/sddm.conf /etc/sddm.conf.d/

