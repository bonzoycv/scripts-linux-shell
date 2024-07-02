#!/bin/bash

#Para Ubuntu y derivadas

#Script que actualiza todo el sistema apt + flatpak + snap 
#usar con cuidado
## Colocar el archivo en /home/$USER/bin Es posible que se deba crear el subdirectorio bin.

## Hacer ejecutable el script

## sudo chmod +x update.sh

## Para crear un alias, agregar al archivo .bashrc que se encuentra en el directorio /home/$USER/

## alias update="update.sh"

## Actualizar paquetes

echo "Ingresa tu contraseña para actualizar el sistema"
sudo apt-get update

## Actualizar paquetes y distribución
sudo apt-get upgrade -y
#sudo apt-get dist upgrade -y
sudo apt-get update

## Limpiar instalación y paquetes no necesarios
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

## Actualiza flatpak, el comando -y aprueba continuar con la instalación
flatpak update -y

## Reparar una instalación flatpak  en caso de ocurrir un problema
sudo flatpak repair

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

#Crea un log del proceso realizado
#sudo date >> "/home/$USER/updatelog.txt"

#Muestra el log almacenado en el archivo de texto
#sudo cat "/home/$USER/updatelog.txt"

## neofetch genera información del equipo
## Para instalar fastfetch usar el siguiente comando - sudo apt install fastfetch
fastfetch

exit
