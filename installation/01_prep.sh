timedatectl set-ntp true
reflector --country 'United States' --latest 25 --age 24 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
./02_partitioning.sh
