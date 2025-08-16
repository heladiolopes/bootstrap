#!/bin/bash

set -euo pipefail

# Create file structure
mkdir -p ~/temp
mkdir -p ~/library/{desktop,documents,downloads,music,pictures,public,templates,videos}
xdg-user-dirs-update

# Change user shell
chsh -s "$(command -v zsh)" "$USER"

# Create zsh cache dir
mkdir -p ~/.cache/zsh

