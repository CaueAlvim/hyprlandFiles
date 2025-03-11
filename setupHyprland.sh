#!/bin/bash

if [[ `whoami` != 'root' ]]
  then echo "Please run as root, sudo bash setupHyprland.sh"
  exit
fi

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install essential packages
sudo pacman -S hyprland hypridle hyprlock kitty waybar swaync xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd sbctl nano grim slurp swww ttf-dejavu ttf-dejavu-nerd cantarell-fonts --noconfirm
sleep 0.5

# Install some other stuff
sudo pacman -S imagemagick hyprpolkitagent hyprsunset opus opusfile mesa vulkan-radeon greetd fuzzel starship --noconfirm
sleep 0.5

# Install apps
sudo pacman -S swayimg gvfs-mtp btop thunar thunar-volman tumbler --noconfirm
sleep 0.5

clear
echo "receba"
echo "ATIVAR ufw E greetd, substitua o comando default no arquivo /etc/greetd/config.toml"
echo "Atualizar firmware e rodar xdg-user-dirs-update"
