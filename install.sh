#!/bin/bash

./debian-install.sh

read -p "Would you like to install Firefox from the Mozilla repos? [y/N]" install_firefox

if [ "$install_firefox" == "y" ]; then
    ./install-firefox.sh
fi

read -p "Would you like to install Samba? [y/N]" install_samba

if [ "$install_samba" == "y" ]; then
    ./install-samba.sh
fi

read -p "Would you like to install ssh, apache, wsgi module, and gunicorn? [y/N]" install_server

if [ "$install_server" == "y" ]; then
    ./install-server.sh
fi