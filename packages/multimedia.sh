#!/bin/bash

set -euo pipefail

echo "[multimedia] Audio & Multimedia"

sudo_run pacman -S --needed --noconfirm \
  pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber wiremix \
  gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly \
  ffmpeg pavucontrol

echo "[multimedia] Enabling PipeWire user services"
systemctl --user enable pipewire pipewire-pulse wireplumber || true

