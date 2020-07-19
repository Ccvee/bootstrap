#!/usr/bin/env bash

echo 'Updating...'
sudo apt update

echo 'Installing packages...'
sudo apt install -y neovim git fzf ssh zsh tmux python3-pip i3

# when tmux spacekey doesn't work. tmux-256 thing is not registerd
# properly.
sudo apt install -y ncurses-term
