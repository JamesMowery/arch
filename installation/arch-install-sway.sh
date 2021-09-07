sudo pacman -S --noconfirm --needed sway
sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed wofi
sudo pacman -S --noconfirm --needed waybar
mkdir ~/.config/sway
cp /etc/sway/config ~/.config/sway/
mkdir ~/.config/alacritty
cp /usr/share/doc/alacritty/example/alacritty.yml ~/.config/alacritty/

