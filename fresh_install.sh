#!/bin/bash

echo "Fresh install is now starting..."

# remove default kde packages
sudo apt remove k3b skanlite vlc

# add ppa repositories
sudo apt-add-repository ppa:kubuntu-ppa/backports
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-add-repository ppa:mmstick76/alacritty
sudo apt-add-repository ppa:ansible/ansible
sudo apt-add-repository ppa:graphics-drivers/ppa

# install vscode
wget -O ~/Downloads/code.deb https://update.code.visualstudio.com/latest/linux-deb-x64/stable
sudo dpkg -i ~/Downloads/code.deb

# install discord
wget -O ~/Downloads/discord.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i ~/Downloads/discord.deb

# install terraform
wget -O ~/Downloads/terraform.zip https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip
unzip ~/Downloads/terraform.zip
sudo mv ~/Downloads/terraform /usr/local/bin

# install aws cli
wget -O ~/Downloads/aws.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
unzip ~/Downloads/aws
sudo ./home/steve/Downloads/aws/install

# update list of packages
sudo apt update

# install packages
sudo apt install -y vim keepassx net-tools curl fish alacritty yadm bat git tmux htop fd-find 
sudo apt install -y virtualenv python3-pip python3-virtualenv thunderbird ranger putty-tools
sudo apt install -y ansible software-properties-common virtualbox

# fix keyboard issues
sudo apt install -y xserver-xorg-input-all

# install docker
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo bash -c 'echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable" > /etc/apt/sources.list.d/docker-ce.list'
sudo apt update
sudo apt install -y docker-ce
sudo systemctl status docker

# set default shell to fish
chsh -s /usr/bin/fish

# remove global fish shell greeting
set -U fish_greeting ""

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# set rust cargo env
source $HOME/.cargo/env

# install rust packages
cargo install exa ripgrep

# install newer versions of packages
sudo apt upgrade

# clear out local repository of retrieved package files
sudo apt autoclean

# remove unnecessary dependencies
sudo apt autoremove

# clone dotfiles
yadm clone https://github.com/smehlhoff/dotfiles.git

# move xorg.conf to default directory
cp xorg.conf /etc/X11/xorg.conf

# fix dual boot time conflicts
# https://askubuntu.com/questions/169376/clock-time-is-off-on-dual-boot
timedatectl set-local-rtc 1

# enable firewall
sudo ufw enable

echo "Fresh install complete."

