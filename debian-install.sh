#!/bin/bash

sudo apt update

echo "Installing some important apps..."
sudo apt install zoxide nvim wget curl fastfetch

echo "Installing Cinnamon DE..."
sudo apt install xorg cinnamon slick-greeter bluetooth bluez blueman gnome-screenshot pluma kupfer mate-terminal gparted

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