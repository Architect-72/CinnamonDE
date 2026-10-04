#!/bin/bash

sudo mkdir -p /etc/sddm.conf.d/

sudo cp $HOME/CinnamonDE/sddm/theme.conf /etc/sddm.conf.d/

sudo systemctl enable sddm 

echo "[Autologin]
User='$USER'
Session=cinnamon " > /etc/sddm.conf

yay -S sddm-theme-sugar-candy-git

