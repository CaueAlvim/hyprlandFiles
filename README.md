# Hyprland dotfiles

this is repository for my hyprland config 

![20250108_14h14m47s_grim](https://github.com/user-attachments/assets/880eecf3-f995-4d19-ba48-3cfbcabccf7c)

Main Packages
```bash
hyprland hypridle hyprlock kitty waybar swaync xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd sbctl nano grim slurp swww ttf-dejavu ttf-dejavu-nerd cantarell-fonts imagemagick hyprpolkitagent hyprsunset opus opusfile mesa vulkan-radeon greetd fuzzel starship
```

Apps
```bash
swayimg gvfs-mtp btop thunar thunar-volman tumbler
```

Zen Browser flatpak permissions (.local/share/flatpak/overrides/app.zen_browser.zen)
```bash
[Context]
shared=!ipc;!network
sockets=!cups;!pcsc;!fallback-x11;!x11
devices=!all;dri
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
