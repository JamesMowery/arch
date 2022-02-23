# Sway Installation
################################################################################

sudo pacman -S --noconfirm --needed sway alacritty wofi waybar
mkdir ~/.config/sway
cp /etc/sway/config ~/.config/sway/
mkdir ~/.config/alacritty
cp /usr/share/doc/alacritty/example/alacritty.yml ~/.config/alacritty/
