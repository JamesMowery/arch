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

sudo pacman -S --noconfirm --needed plocate base-devel util-linux openssh unzip bluez bluez-utils cups cups-pdf

# System Services
################################################################################

systemctl enable NetworkManager
systemctl enable fstrim.timer
systemctl enable bluetooth
systemctl enable cups.socket
