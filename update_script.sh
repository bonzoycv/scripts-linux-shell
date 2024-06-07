#!/bin/bash

## Colocar el archivo en /home/$USER/bin Es posible que se deba crear el subdirectorio bin.

## Hacer ejecutable el script

## sudo chmod +x update.sh

## Para crear un alias, agregar al archivo .bashrc que se encuentra en el directorio /home/USUARIO/

## alias update="update.sh"

## Actualizar paquetes

echo "Updating the system"
sudo apt-get update

## Actualiza apps de flatpak instaladas en el sistema, el comando -y aprueba continuar con la instalación
flatpak update -y

## Reparar una instalación flatpak  en caso de ocurrir un problema
sudo flatpak repair

## Actualizar paquetes y distribución
sudo apt-get upgrade -y
sudo apt-get dist upgrade -y
sudo apt-get update

## Limpiar instalación y paquetes no necesarios
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

## Actualizar una instalación o runtime y desintalar aplicaciones innecesarias
flatpak update -y
flatpak uninstall --unused -y

## Actualiza los paquetes de snap
sudo snap refresh

#sudo apt update && sudo apt upgrade -y
#sudo apt autoremove
#flatpak update -y
#sudo snap refresh

## Informa que se ha realizado la actualización con éxito

echo "El sistema se ha actualizado!"

#crea un log del proceso realizado
sudo cat "/home/$USER/updatelog.txt"

neofetch

exit

