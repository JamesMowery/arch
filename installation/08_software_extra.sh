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
# ADDITIONAL SOFTWARE
################################################################################

# Multimedia
#pacman -S --noconfirm --needed mpv feh yt-dlp streamlink flameshot nitrogen

# Lock
#pacman -S --noconfirm --needed xautolock

# Notifications
#pacman -S --noconfirm --needed dunst

# Disk Management
#pacman -S --noconfirm --needed thunar gparted gvfs

# Fonts
#sudo pacman -S --noconfirm --needed ttf-fira-code ttf-fira-mono ttf-fira-sans adobe-source-code-pro-fonts
#sudo pacman -S --noconfirm --needed nerd-fonts-source-code-pro

# TODO: Add multilib support in pacman

# Gaming
#sudo pacman -S --noconfirm --needed discord lutris steam

# Launchers
#sudo pacman -S --noconfirm --needed rofi


################################################################################
# DESKTOP ENVIRONMENTS
################################################################################


# Xorg
################################################################################
#sudo pacman -S --noconfirm --needed xorg-server

# Wayland
################################################################################
#sudo pacman -S --noconfirm --needed wayland

# KDE
################################################################################
#sudo pacman -S --noconfirm --needed plasma-meta

# Gnome
################################################################################


################################################################################
# BOOT LOADER
################################################################################

# Boot Manager (Grub)
################################################################################
#sudo pacman -S --noconfirm --needed grub

# Boot Manager (Refind)
################################################################################
#sudo pacman -S --nocnfirm --needed refind

# Copy refind config
