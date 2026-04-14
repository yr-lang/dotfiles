#!/bin/bash
epoch() { date +%s; }

mkdir "$HOME/.bkp_dotfiles"
for item in .*; do
  if [[ "$item" != '.git' && "$item" != '.' && "$item" != '..' ]]; then
    mv $HOME/$item $HOME/.bkp_dotfiles/$item\_$(epoch)
    ln -sf ./$item $HOME
  fi
done

bash
