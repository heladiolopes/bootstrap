#!/bin/bash

set -euo pipefail

# Install Pyenv
if [ ! -d ~/.local/share/pyenv ]; then
  git clone https://github.com/pyenv/pyenv.git ~/.local/share/pyenv
else
  git -C ~/.local/share/pyenv pull
fi

# Clone TPM
if [ ! -d ~/.config/tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
else
  git -C ~/.config/tmux/plugins/tpm pull
fi

