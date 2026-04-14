#!/bin/bash

epoch() { date +%s; }

mkdir -p "$HOME/.bkp_dotfiles"

for item in .*; do
  if [[ "$item" != '.' && "$item" != '..' && "$item" != '.git' ]]; then

    target="$HOME/$item"
    source="$(pwd)/$item"

    if [ -e "$target" ] || [ -L "$target" ]; then
      mv "$target" "$HOME/.bkp_dotfiles/${item}_$(epoch)" 2>/dev/null || true
    fi

    ln -sf "$source" "$target"
  fi
done
