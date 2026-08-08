#!/bin/bash

cd /boot/EFI/

sudo refind-install

sudo mv /boot/EFI/refind/ /boot/EFI/refind-bckup/

sudo cp -r $HOME/CinnamonDE/refind/refind/ /boot/EFI/

cd $HOME

