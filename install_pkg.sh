#!/usr/bin/env bash

echo 'Updating...'
sudo apt update

echo 'Installing packages...'
sudo apt install -y neovim git fzf ssh zsh tmux python3-pip
