sudo pacman -S qemu virt-manager qemu qemu-arch-extra ovmf vde2 ndsmasq bridge-utils dmidecode
systemctl enable libvirtd.service
sudo groupadd libvirt
sudo usermod -aG libvirt james
virsh net-start default
virsh net-autostart default
