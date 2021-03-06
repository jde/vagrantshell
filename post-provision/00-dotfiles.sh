#!/usr/bin/env bash
# Install dotfiles
echo -e "\nInstalling dotfiles from https://github.com/danemacmillan/dotfiles. This will take a minute."
echo -e "--------------------------------------------------------------------------------"
echo -e "Installing for '$USER_USER' user..."
sudo -u $USER_USER -H -i bash -c "cd /home/$USER_USER && git clone git@github.com:danemacmillan/dotfiles.git .dotfiles && source /home/$USER_USER/.dotfiles/bootstrap.sh"
echo -e "Installing for 'root' user..."
cd /root && git clone git@github.com:danemacmillan/dotfiles.git .dotfiles && source /root/.dotfiles/bootstrap.sh
echo -e "\ndotfiles installed successfully (unless you are on Windows)!"
echo -e "Windows users must 'vagrant ssh' in and run 'source ~/.dotfiles/bootstrap.sh' the first time."
