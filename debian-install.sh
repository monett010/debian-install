#!/bin/bash

sudo apt update

echo "Installing some important apps..."
sudo apt install zoxide neovim wget curl fastfetch dkms ntfs-3g python3-pip python3-virtualenv

echo "Installing Cinnamon DE..."
sudo apt install xorg cinnamon slick-greeter bluetooth bluez blueman gnome-screenshot pluma kupfer mate-terminal gparted synaptic

sudo apt remove gnome-terminal

read -p "Would you like to install flatpak? (y/n) " flatpak
    if [ "$flatpak" == "y" ]; then
        sudo apt install flatpak
    fi

echo "Installing themes and fonts..."
sudo apt install arc-theme papirus-icon-theme budgie-backgrounds fonts-cascadia-code

echo "Downloading Meslo LGS Nerd Font..."
cd /home/$USER/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip

echo "Writing custom settings to .bashrc..."
printf "\n\n" >> /home/$USER/.bashrc
echo "# zoxide" >>  /home/$USER/.bashrc
echo eval "\"\$(zoxide init bash)\"" >> /home/$USER/.bashrc
printf "\n\n" >> /home/$USER/.bashrc
echo "# aliases" >>  /home/$USER/.bashrc
echo "alias list='ls -la'" >>  /home/$USER/.bashrc

echo "Writing custom settings to .zshrc..."
printf "\n\n" >> /home/$USER/.bashrc
echo "# zoxide" >>  /home/$USER/.zshrc 
echo eval "\"\$(zoxide init zsh)\"" >> /home/$USER/.zshrc
printf "\n\n" >> /home/$USER/.bashrc
echo "# aliases" >>  /home/$USER/.zshrc 
echo "alias list='ls -la'" >>  /home/$USER/.zshrc 

echo "Fixing NetworkManager..."
sudo mv /etc/network/interfaces /etc/network/interfaces_old