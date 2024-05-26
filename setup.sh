#!/bin/bash

# Update package lists
pacman -Syu

# Install essential packages
pacman -S git neovim zsh fzf base-devel alacritty dolphin curl wget wofi stow

# Configure shell
chsh -s /usr/bin/zsh
