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

# User Setup
################################################################################

# Root Password
echo root:<password> | chpasswd

useradd -m james
echo james:<password> | chpasswd
usermod -aG wheel james

# System Services
################################################################################

systemctl enable NetworkManager
systemctl enable fstrim.timer
systemctl enable bluetooth
systemctl enable cups.socket

# Enable Multilib
################################################################################
echo "[multilib]" >> /etc/pacman.d/mirrorlist
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.d/mirrorlist
sudo pacman -Syu

echo "Continue with 05_software_base.sh"
./05_software_base.sh
