#!/usr/bin/env bash

# Lists the files in your .ssh directory, if they exist.
ls -al ~/.ssh

# Generate a new key.
ssh-keygen -t rsa -b 4096 -C "3duardak1@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

### Make sure to add host key to github ###

ssh -T git@github.com

# If running OS is WSL, use SSH over the HTTPS port.
# b/c firewall on Windows side, maybe, refuse SSH connection. Blocking port 22.
ssh -T -p 443 git@ssh.github.com

touch ~/.ssh/config
chmod 755 ~/.ssh/config

sudo tee -a ~/.ssh/config > /dev/null <<EOT
Host github.com
  Hostname ssh.github.com
  Port 443
EOT

sudo /etc/init.d/sshrestart
ssh -T git@github.com
