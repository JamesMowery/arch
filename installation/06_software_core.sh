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

################################################################################
# BASE SOFTWARE
################################################################################

sudo pacman -S --noconfirm --needed base-devel bluez bluez-utils cups cups-pdf gvfs mesa networkmanager nvidia nvidia-utils nvidia-settings openssh os-prober pipewire pipeware-alsa pipewire-alsa pipewire-pulse pipewire-jack plocate reflector util-linux unzip xdg-user-dirs xdg-utils


# Boot Manager (Grub)
################################################################################
sudo pacman -S --noconfirm --needed grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# Boot Manager (Refind)
################################################################################
#sudo pacman -S --noconfirm --needed refind
#refind-install

################################################################################
# EXTRA SOFTWARE
################################################################################

# Performance
pacman -S --noconfirm --needed btop

# Terminal
pacman -S --noconfirm --needed kitty fish powerline powerline-vim powerline-fonts

# Browser
pacman -S --noconfirm --needed firefox

# Fonts
#sudo pacman -S --noconfirm --needed ttf-fira-code ttf-fira-mono ttf-fira-sans adobe-source-code-pro-fonts
#sudo pacman -S --noconfirm --needed nerd-fonts-source-code-pro

# System Services
################################################################################

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.socket
systemctl enable reflector.timer
systemctl enable fstrim.timer

echo "---------------------------------------"
echo "Continue with 07_software_extra.sh"
