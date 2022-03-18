#!/bin/bash

# Este script que muestra tu IP pública


result=$(wget https://ipinfo.io/ip -qO -)

echo "Tu IP p is: $result"
