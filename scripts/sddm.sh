#!/bin/bash

yay -S sddm-theme-sugar-candy-git

sudo mkdir -p /etc/sddm.conf.d/

sudo cp $HOME/CinnamonDE/sddm/theme.conf /etc/sddm.conf.d/

