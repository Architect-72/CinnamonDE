#!/bin/bash

sudo rm -rf $HOME/.bashrc

cd $HOME/CinnamonDE

sleep 5

stow bash
stow cinnamon
stow themes
stow pictures

dconf load /org/cinnamon/ < $HOME/CinnamonDE/full-conf/cinnamon-settings.ini

