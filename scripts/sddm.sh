#!/bin/bash

sudo mkdir -p /etc/sddm.conf.d/

sudo cp $HOME/CinnamonDE/sddm/theme.conf /etc/sddm.conf.d/

sudo systemctl enable sddm 

yay -S sddm-theme-sugar-candy-git

