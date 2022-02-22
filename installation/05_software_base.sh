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

# Nvidia Drivers
pacman -S --noconfirm --needed nvidia nvidia-utils nvidia-settings

# Intel & Other Video Drivers
pacman -S --noconfirm --needed mesa mesa-utils lib32-mesa intel-media-driver glu

# Performance
pacman -S --noconfirm --needed btop

# Terminal
pacman -S --noconfirm --needed kitty fish powerline powerline-vim powerline-fonts

# Browser
pacman -S --noconfirm --needed firefox
