#!/bin/bash

# Basic System Config
################################################################################

# System Clock
ln -sf /usr/share/zoneinfo/US/Arizona /etc/localtime
hwclock --systohc

# Locale
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# Host
echo "mowery" >> /etc/hostname
echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1	localhost" >> /etc/hosts
echo "127.0.1.1	mowery.localdomain	mowery" >> /etc/hosts

# Root Password
echo root:password | chpasswd

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

# Base Software
pacman -S vim networkmanager base-devel util-linux openssh git man-db unzip mlocate sudo

# Sound
pacman -S --noconfirm --needed pipewire wireplumber

# Terminal
pacman -S --noconfirm --needed kitty zsh powerline powerline-vim powerline-fonts

# Performance
pacman -S --noconfirm --needed conky bpytop

# Multimedia
pacman -S --noconfirm --needed mpv feh yt-dlp streamlink flameshot nitrogen

# Lock
pacman -S --noconfirm --needed xautolock

# Notifications
pacman -S --noconfirm --needed dunst

# Disk Management
pacman -S --noconfirm --needed thunar gparted gvfs

# Browser
# pacman -S --noconfirm --needed vivaldi
pacman -S --noconfirm --needed chromium

# Bluetooth
pacman -S --noconfirm --needed bluez bluez-utils

# TODO: Add multilib support in pacman

#sudo pacman -S --noconfirm --needed discord
#sudo pacman -S --noconfirm --needed steam
#sudo pacman -S --noconfirm --needed lutris
#sudo pacman -S --noconfirm --needed rofi

# Fonts

sudo pacman -S --noconfirm --needed ttf-fira-code ttf-fira-mono ttf-fira-sans adobe-source-code-pro-fonts

#sudo pacman -S --noconfirm --needed nerd-fonts-source-code-pro

# X
################################################################################

#sudo pacman -S xorg

# Wayland
################################################################################

#sudo pacman -S wayland


# Boot Manager (Refind)
################################################################################

# Copy refind config

# System Services
################################################################################

systemctl enable NetworkManager
systemctl enable fstrim.timer
#systemctl enable bluetooth

# User Setup
################################################################################

useradd -m james
echo james:password | chpasswd
usermod -aG wheel james

# Wrapping Up
################################################################################

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
