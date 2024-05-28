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
sudo pacman -S sway zip unzip swayidle sddm htop brightnessctl xdg-desktop-portal xdg-desktop-portal-wlr pavucontrol swaybg waybar grim alacritty swaylock wofi slurp xorg-xwayland neofetch curl wget stow alsa-tools pulsemixer base-devel fzf zsh neovim solaar steam ttf-font-awesome nerd-fonts --noconfirm

# Uninstall redundant stuff
#sudo pacman -Rs foot --noconfirm

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm
cd
rm -rf yay/

# Install yay packages
yay -S google-chrome spotify webcord multimc-bin obs-studio-tytan652 autotiling --noconfirm

# Configure shell
sudo chsh -s /usr/bin/zsh

# Enable sddm
sudo systemctl enable sddm
sudo systemctl start sddm

# Stow to create symlinks and bring the entire system together
cd dotfiles
stow .
cd

# Spicetify ricing
#sudo chmod 777 /opt/spotify -R
#spicetify config current_theme #Insert theme here I guess?
#spicetify apply

# Make project directories
mkdir -p ~/developer/projects
cd developer/projects
git clone https://github.com/ShiverP/game-engine.git
git clone https://github.com/ShiverP/edens-crucible.git
git clone https://github.com/ShiverP/chiclaps.git
cd

# set up zsh (?)
zsh

