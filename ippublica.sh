#!/bin/bash

# Este script muestra tu IP pública


result=$(wget https://ipinfo.io/ip -qO -)

echo "Tu IP Pública es: $result"
