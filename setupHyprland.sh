#!/bin/bash

if [[ `whoami` != 'root' ]]
  then echo "Please run as root, sudo bash setupHyprland.sh"
  exit
fi

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install core packages
sudo pacman -S hyprland hypridle hyprlock xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd sbctl nano --noconfirm
sleep 0.5

# Install essential packages
sudo pacman -S hyprpolkitagent hyprsunset kitty waybar swaync grim slurp greetd fuzzel swww ttf-dejavu ttf-dejavu-nerd cantarell-fonts --noconfirm
sleep 0.5

# Install some other stuff
sudo pacman -S gvfs-mtp imagemagick ffmpeg opus opusfile mesa vulkan-radeon --noconfirm
sleep 0.5

# Install apps
sudo pacman -S swayimg btop thunar thunar-volman tumbler starship --noconfirm
sleep 0.5

clear
echo "ATIVAR ufw E greetd, substitua o comando default no arquivo /etc/greetd/config.toml"
echo "Copie as configurações:  cp -r dotfiles/* $HOME/.config"
echo "Atualizar firmware e rodar xdg-user-dirs-update"
