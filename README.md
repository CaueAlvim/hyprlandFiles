# Hyprland dotfiles

My hyprland configuration files 

Core Packages
```bash
hyprland hypridle hyprlock xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd nano
```

Essential/Preferred Apps
```bash
hyprpolkitagent hyprsunset alacritty waybar swaync grim slurp greetd fuzzel swww ttf-dejavu ttf-dejavu-nerd cantarell-fonts
```

Codecs/Drivers/Other Stuff
```bash
gvfs-mtp imagemagick ffmpeg opus opusfile mesa vulkan-radeon
```

Other Daily Usage Apps
```bash
swayimg btop thunar thunar-volman tumbler
```

Steam flatpak permissions (.local/share/flatpak/overrides/com.valvesoftware.Steam)
```bash
[Context]
shared=!ipc;!network
devices=!all;input;dri
features=!bluetooth;!devel
filesystems=!xdg-music;!xdg-pictures;!xdg-run/app/com.discordapp.Discord

[Session Bus Policy]
org.gnome.SettingsDaemon.MediaKeys=none
```
