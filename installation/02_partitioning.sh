lsblk -f
echo "Run: fdisk /dev/<device> & create partitions as needed."
echo "Run: mkfs.ext4 /dev/<root_partition> for / partition"
echo "Run: mkfs.vfat /dev/<boot_partition> for boot partition (if needed)"
echo "Run: mkswap /dev/<swap_partition> then swapon /dev/<swap_partition> (if needed)"
