#!/usr/bin/env bash

cd ~/Projects
git clone git@github.com:Ccvee/WinDotFiles.git
mkdir -p ~/.config/nvim
cp ~/Projects/WinDotFiles/init.vim ~/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# CoC Instalation
# Install nodejs
curl -sL install-node.now.sh/lts | sudo bash

nvim -c PlugInstall -c qa
nvim -c CocInstall coc-json coc-tsserver coc-python -c qa
pip3 install pylint # To get errors and warnings.
# Change "python.jediEnabled": false for coc-python.

