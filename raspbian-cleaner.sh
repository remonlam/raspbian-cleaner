#!/bin/bash

# Remove python GPIO package;
sudo apt-get purge python-rpi.gpio.


# Set GPU memory to minimal;
echo "gpu_mem=16" >> /mnt/rpi/boot/config.txt

# Disable swap, will be effective after system reboot;
sudo dphys-swapfile swapoff
sudo dphys-swapfile uninstall
sudo update-rc.d dphys-swapfile remove
