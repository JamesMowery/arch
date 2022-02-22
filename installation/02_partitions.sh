lsblk -f
echo "1: gdisk /dev/sdX | 2: press 'n' & create 300 MB partition"
echo "3: press 't' and select 'ef00' (gdisk) | 4: create other partitions as necessary"
echo "5: press 'w' to write, then format the partitions."
echo "---------------------------"
echo "Run: mkfs.vfat /dev/<boot_partition> for EFI System partition."
echo "Run: mkfs.ext4 /dev/<root_partition> for / partition."
echo "Run: mkswap /dev/<swap_partition> then swapon /dev/<swap_partition>."

