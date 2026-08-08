#!/bin/bash

sudo pacman -Syu 

git clone https://aur.archlinux.org/yay.git

cd yay/

makepkg -si

cd $HOME

sudo rm -rf yay/

