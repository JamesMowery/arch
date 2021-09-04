#!/bin/bash

####################################################
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
####################################################

# TODO: Add multilib to pacman config
# multilib config here

# Terminal

sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed vim
sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed powerline
sudo pacman -S --noconfirm --needed powerline-vim
sudo pacman -S --noconfirm --needed powerline-fonts

# System Utilities

sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed man-db
sudo pacman -S --noconfirm --needed unzip
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed ntfs-3g
sudo pacman -S --noconfirm --needed xautolock

# File Browser

sudo pacman -S --noconfirm --needed pcmanfm
#sudo pacman -S --noconfirm --needed thunar

# Performance

sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed hwinfo
sudo pacman -S --noconfirm --needed bpytop
sudo pacman -S --noconfirm --needed conky

# Notifications

sudo pacman -S --noconfirm --needed dunst

# Browser

sudo pacman -S --noconfirm --needed firefox
#sudo pacman -S --noconfirm --needed chromium

# Chat

sudo pacman -S --noconfirm --needed discord

# Multimedia

sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed feh
#sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed youtube-dl
#sudo pacman -S --noconfirm --needed deadbeef
sudo pacman -S --noconfirm --needed flameshot

# Backup

sudo pacman -S --noconfirm --needed clonezilla

# Gaming

sudo pacman -S --noconfirm --needed steam
sudo pacman -S --noconfirm --needed lutris

# Customization

sudo pacman -S --noconfirm --needed nitrogen
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed rofi

# Fonts

sudo pacman -S --noconfirm --needed ttf-fira-code
sudo pacman -S --noconfirm --needed ttf-fira-mono
sudo pacman -S --noconfirm --needed ttf-fira-sans
sudo pacman -S --noconfirm --needed adobe-source-code-pro-fonts
sudo pacman -S --noconfirm --needed nerd-fonts-source-code-pro

# Audio

sudo pacman -S --noconfirm --needed pulseaudio
#sudo pacman -S --noconfirm --needed pulse-asla
sudo pacman -S --noconfirm --needed pavucontrol

# Develop and Compile
sudo pacman -S --noconfirm --needed base-devel
