#!/bin/bash

# Basic System Config
################################################################################

# System Clock
ln -sf /usr/share/zoneinfo/US/Arizona /etc/localtime
hwclock --systohc

# Locale
sed -i '178s/.//' /etc/locale.gen
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
echo root:password | chpasswd

useradd -m james
echo james:password | chpasswd
#usermod -aG libvert james

echo "james ALL=(ALL) ALL" >> /etc/sudoers.d/james

# Enable Multilib
################################################################################
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
sudo pacman -Sy

echo "---------------------------------------"
echo "Continue with 06_software_core.sh"
./06_software_base.sh
