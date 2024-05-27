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
sudo pacman -S git github-cli brightnessctl neovim zsh fzf base-devel alsa-tools alacritty dolphin curl wget wofi stow ttf-font-awesome nerd-fonts swaybg --noconfirm 

# Uninstall redundant stuff
#sudo pacman -Rs foot --noconfirm

# Install yay
#git clone https://aur.archlinux.org/yay.git
#cd yay/
#makepkg -si --noconfirm
#cd
#rm -rf yay/

# Install yay packages
#yay -S google-chrome spotify discord_arch_electron --noconfirm

# Configure shell
sudo chsh -s /usr/bin/zsh

# Stow to create symlinks and bring the entire system together
cd dotfiles
stow .
cd

# Make project directories
mkdir -p ~/developer/projects
cd developer/projects
git clone https://github.com/ShiverP/game-engine.git
git clone https://github.com/ShiverP/edens-crucible.git
git clone https://github.com/ShiverP/chiclaps.git
cd
