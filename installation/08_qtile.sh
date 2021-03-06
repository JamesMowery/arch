#!/bin/bash

################################################################################
# INSTALLING SOFTWARE
# 
# To install software, use the following command:
# sudo pacman -S --noconfirm --needed <name>
#
# REMOVING SOFTWARE
# 
# If this is a service, be sure to disable it:
# sudo systemctl disable <name>.service
#
# To remove software, use the following command:
# sudo pacman -Rs --noconfirm <name>
################################################################################

# LOGIN

sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# QTILE

sudo pacman -S --noconfirm --needed qtile python-setuptools python-psutil
