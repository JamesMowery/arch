lsblk -f
echo "Run: gdisk /dev/sdX."
echo "Press 'n' and create a 300MB partition."
echo "Press 't' and select 'ef00' (gdisk) or '1' (fdisk) for 'EFI System'."
echo "Create other partitions as necessary."
echo "Press 'w' to write, then format the partitions."

echo "Run: mkfs.vfat /dev/<boot_partition> for EFI System partition."
echo "Run: mkfs.ext4 /dev/<root_partition> for / partition."
echo "Run: mkswap /dev/<swap_partition> then swapon /dev/<swap_partition>."

