#!/bin/bash

variable=1

while [ $variable -le 10 ]
do

	echo $variable
	variable=$(($variable + 1))
	sleep 1
done
