#!/bin/bash

sudo apt update

echo "Installing ssh, apache, wsgi module, gunicorn, etc..."
sudo apt install ssh apache2 libapache2-mod-wsgi-py3 gunicorn tmux

sudo systemctl enable ssh apache2 --now