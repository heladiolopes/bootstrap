#!/bin/bash

need() { command -v "$1" >/dev/null 2>&1; }

yesno() { read -r -p "$1 [y/N]: " _ans; [[ "${_ans:-}" =~ ^[Yy]$ ]]; }

sudo_run() { sudo -n true 2>/dev/null || echo "[i] sudo password may be requested"; sudo bash -c "$*"; }

