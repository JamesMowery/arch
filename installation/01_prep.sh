timedatectl set-ntp true
reflector --country 'United States' --latest 25 --age 24 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy
echo "---------------------------------------"
echo "Continue with 02_partition.sh"
./02_partition.sh
