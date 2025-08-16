#!/bin/bash

set -euo pipefail

# Ask sudo password before everything starts
sudo echo

# Source scripts
source preflight/functions.sh
source preflight/pacman.sh
source preflight/aur.sh

# # Modules Config
# source config/nvidia.sh

# Install Package Groups
source packages/multimedia.sh
source packages/desktop.sh
source packages/file_management.sh
source packages/theming.sh
source packages/display_manager.sh
source packages/utilities.sh

# Dotfiles and file editors
source develop/develop.sh
source develop/dotfiles.sh
source develop/user.sh
source develop/tools.sh
