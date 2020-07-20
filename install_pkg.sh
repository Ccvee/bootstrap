#!/usr/bin/env bash
#
# Ubuntu 20.04
#

echo 'Updating...'
sudo apt update
echo 'Installing packages...'
sudo apt install -y git ssh zsh neovim fzf tmux python3 python3-pip bat nodejs
sudo npm install --global git-open

# When tmux spacekey doesn't work. tmux-256 thing is not registerd
# properly.
sudo apt install -y ncurses-term
