#!/bin/bash

## script basico para actualizar sistemas basados en Debian

#cd /etc

#if [ -d /etc/apt ]

#then
sudo apt update && sudo apt dist-upgrade -y

echo "${USER} El sistema se ha actualizado!"

#fi