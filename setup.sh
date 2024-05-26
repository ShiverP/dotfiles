#!/bin/bash

# Update package lists
sudo pacman -Syu

# Install essential packages
sudo pacman -S git github-cli neovim zsh fzf base-devel alacritty dolphin curl wget wofi stow ttf-font-awesome nerd-fonts --noconfirm 

# Uninstall redundant stuff
sudo pacman -Rs foot --noconfirm

# Configure shell
sudo chsh -s /usr/bin/zsh
