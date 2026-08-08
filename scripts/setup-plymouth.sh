#!/bin/bash

sudo cp -r $HOME/CinnamonDE/plymouth/spnnr-thm /usr/share/plymouth/themes/

cd /usr/share/plymouth/themes/

sudo rm -rf ./spinner

sudo mv ./spnnr-thm ./spinner

sudo plymouth-set-default-theme -R spinner

sudo mkinitcpio -P

