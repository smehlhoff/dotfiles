#!/bin/bash

# remove default kde packages
sudo apt remove k3b skanlite vlc

# add ppa repositories
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt-add-repository ppa:fish-shell/release-3
sudo add-apt-repository ppa:mmstick76/alacritty
sudo add-apt-repository ppa:graphics-drivers/ppa

# install vscode
wget -O ~/Downloads/code.deb https://update.code.visualstudio.com/latest/linux-deb-x64/stable
sudo dpkg -i ~/Downloads/code.deb

# install discord
wget -O ~/Downloads/discord.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i ~/Downloads/discord.deb

# update list of packages
sudo apt update

# install packages
sudo apt install vim keepassx net-tools curl fish alacritty yadm bat git tmux htop fd-find 
sudo apt install virtualenv python3-pip qpython3-virtualenv thunderbird redshift

# set default shell to fish
chsh -s /usr/bin/fish

# remove global fish shell greeting
set -U fish_greeting ""

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# set rust cargo env
source $HOME/.cargo/env

# install exa
cargo install exa

# enable firewall
sudo ufw enable

# fix keyboard issues
sudo apt-get install xserver-xorg-input-all

# install newer versions of packages
sudo apt upgrade

# clears out the local repository of retrieved packages files
sudo apt autoclean

# remove unnecessary dependencies
sudo apt autoremove

# clone dotfiles
yadm clone https://github.com/smehlhoff/dotfiles.git

# move xorg.conf to default directory
cp xorg.conf /etc/X11/xorg.conf

echo "Fresh install complete."
