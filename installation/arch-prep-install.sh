iwctl --passphrase gohawks18! station wlan0 connect GWiFi
timedatectl set-ntp true
reflector --country 'United States' --latest 50 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
