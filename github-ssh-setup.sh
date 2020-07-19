#!/usr/bin/env bash

if [ ! -e ${HOME}/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -C "3duardak1@gmail.com"
# Start the ssh-agent in the background.
    eval $(ssh-agent -s)
# Add your SSH private key to the ssh-agent.
    ssh-add ${HOME}/.ssh/id_rsa
    printf "Add the SSH key to your GitHub account.\n"
else
    printf "You already seems to have SSH key. Have you added it to your Github account?\n"
fi

pkgs='xclip'
if ! dpkg -s $pkgs >/dev/null 2>&1; then
  printf "Installing xclip"
  sudo apt install -y $pkgs
fi

xclip -sel clip < ~/.ssh/id_rsa.pub
printf "Copied ~/.ssh/id_rsa.pub to clipboard.\n"

printf "Do you want to check the connection to Github? [Enter a number]\n"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ssh -T git@github.com; break;;
        No  ) break;;
    esac
done
