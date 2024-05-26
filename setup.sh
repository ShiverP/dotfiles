#!/bin/bash

# Go into root
cd /

# Add lines to sudoers and pacman configs
sudo echo "[options]
ILoveCandy
Color
ParallelDownloads = 25" >> /etc/pacman.conf

sudo touch /etc/sudoers.d/10-arch
sudo echo "shiver ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/10-arch 

# cd back to user home
cd

# Update package lists
sudo pacman -Syu

# Install essential packages
sudo pacman -S git github-cli neovim zsh fzf base-devel alacritty dolphin curl wget wofi stow ttf-font-awesome nerd-fonts --noconfirm 

# Uninstall redundant stuff
sudo pacman -Rs foot --noconfirm

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm
cd ..
rm -rf yay/

# Install yay packages
yay -S google-chrome spotify --noconfirm

# Configure shell
sudo chsh -s /usr/bin/zsh
