echo "Running pacstrap"
pacstrap /mnt base linux linux-firmware vim intel-ucode sudo 
echo "Generating fstab"
genfstab -U /mnt >> /mnt/etc/fstab
echo "Chrooting into arch"
arch-chroot /mnt
echo "Continue with 04_base_system.sh"
#./05_base_system.sh
