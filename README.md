##This repository / repo is mainly designed for Arch Linux but it can be used for any linux distribution / distro or UNIX like OSes (Like MacOS, BSD and others) to be cloned using git.##




[Getting started]:

>To get started after installing Arch Linux manually or using the "arch-install" script in the live environment:

>Make sure the system is up to date by running " sudo pacman -Syyu ", 

>Second make sure you have git and a text editor (vim, nano) of your choice installed on your system,

>Next clone the repository for the dotfiles you would like to download using git;

>You can do that by typing in the console:

 user@hostname ~ >$ git clone https://github.com/Architect-72/"repo of choice".git

>Once it's done cloning change directory (cd) into "dotfiles"

>Within dotfiles you can find this <('O' )> ~ wHaT ~ (I know, I was surprised too)
but also an install.sh script

##The script should only download the packages I use with that Desktop Environment or Window Manager, if there is a package you don't want to install feel free to modify the package list found in packages directory / folder on your system, after you've cloned the repo of course ;) ##

>To run the install script type 

user@hostname dotfiles >$ sudo ./install.sh

> at the end you should get a message which says 

" Configurations are done :D "

>After rebooting You would have a Desktop Environment / Window Manager set up as intended based on my configs and you should be ready to use the system. if it not quite perfect its ok below are some stuff to do after running the install script.




------------------------------------------------------------------------



Some stuff to sort out manually after installing everything include:

[SDDM]: 
To make it look the way you want add a picture of your choice to the /usr/share/sddm/themes/*theme in question*/backgrounds folder

# " * " in this instance means the same directory above except you type cd .. to go back to the "*theme in question*" directory #

Edit */theme.conf in the line where it says something along the lines of background/Mountain.jpg or something, but change the name of the image to the picture you want but don't delete "background/" just replace Mountain.jpg with the name of your picture. needless to say which should have been copied or moved to /usr/share/sddm/themes/*theme in question*/backgrounds.

In the same theme.conf file you can change the colour of the login manager in the section titled "Design Customizations".


[rEFInd]: 
You need to change the fstab in the arch linux line at the bottom of the configuration file found in /boot/EFI/refind/refind.conf or /boot/efi/EFI/refind/refind.conf 

You can find the fstab in /etc/fstab, the fstab in this folder / directory is a text file use a text editor to view the fstabs.

You should copy the one which just has " / ", not " /boot ", or  " swap ".

Copy something along the lines of 

        " UUID=r0oTuUiD-1Ab2-3c4D-56Ef-gHi7j8K91lmn0 "

and paste this in options line after "root="

Look for :

menuentry {
    icon  "some icon pack directory / folder"
    volume "Arch Linux"
    loader /vmlinzu-lunix                    "I didn't misspell it you did XD"
    initrd /initramfs-linux.img
    options  "root=                                                " <<<<<<<<< on this line
}



You should also make sure that the "menuentry" stanza ends with enabled it's not so already.






[System service]

-If necessary enable system services if they are not already enabled, the list of which is found in the packages directory / folder .


-To enable a service, type the following in the console:

user@hostname ~ >$ sudo systemctl enable "service name"


-To start a service, type the following in the console:

user@hostname ~ >$ sudo systemctl start "service name"


-To check the status of a service, type the following in the console:

user@hostname ~ >$ sudo systemctl status "service name" 



[General/Quality of life]:

make sure that your keyboard is set to the correct keymap, mine is set to the UK extended variant (which include the numberpad) 

adjust mouse sensitivity accordingly, if necessary.


Again, these configurations are designed for systems running Arch Linux but it can be used for any linux distribution / distro or UNIX like OSes (Like MacOS, BSD and others).

I will probably add more stuff to the repo and more instructions here too, but for now enjoy the configs I guess XD.



