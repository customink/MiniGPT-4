#!/bin/sh
set -e

if ! grep -q "conda initialize" "$HOME/.zshrc"; then
  conda init zsh
fi
