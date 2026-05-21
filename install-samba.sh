#!/bin/bash

sudo apt update

echo "Installing samba and wsdd..."
sudo apt install samba wsdd2

echo "Copying smb.conf to /etc/samba/smb.conf..."
sudo cp smb.conf /etc/samba/smb.conf

read -p "What is your samba username?: " username
sudo smbpasswd -a "$username"