#!/bin/bash

sudo pacman -Syu 

sudo pacman -S --needed $(cat $HOME/CinnamonDE/packages/packages.txt)

