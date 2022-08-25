#!/bin/bash

## script para actualizar el sistema ## YCV

sudo apt update && sudo apt upgrade -y
sudo apt autoremove
flatpak update -y
sudo snap refresh


echo "El sistema se ha actualizado! Hasta luego $USER."

exit
