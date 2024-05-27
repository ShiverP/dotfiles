#!/bin/bash


# Go into root
cd /

# Add lines to sudoers and pacman configs
echo "[options]
ILoveCandy
Color
ParallelDownloads = 25" | sudo tee -a /etc/pacman.conf

sudo touch /etc/sudoers.d/10-arch
echo "shiver ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/10-arch 

# cd back to user home
cd

# Update package lists
sudo pacman -Syu

# Install essential packages
sudo pacman -S git brightnessctl solaar neovim zsh fzf base-devel pulsemixer alsa-tools alacritty dolphin curl wget wofi stow steam ttf-font-awesome nerd-fonts --noconfirm 

# Uninstall redundant stuff
sudo pacman -Rs foot --noconfirm

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm
cd
rm -rf yay/

# Install yay packages
yay -S google-chrome spotify discord_arch_electron multimc-bin --noconfirm

# Configure shell
sudo chsh -s /usr/bin/zsh

# Stow to create symlinks and bring the entire system together
cd dotfiles
stow .
cd

# Make project directories
mkdir -p ~/developer/projects
cd developer/projects
git clone git@github.com:ShiverP/game-engine.git
git clone https://github.com/ShiverP/edens-crucible.git
git clone https://github.com/ShiverP/chiclaps.git
cd

# Git user name and email 
git config --global user.name "ShiverP"
git config --global user.email "shivamparwat01@gmail.com"
git config --global pull.rebase false
