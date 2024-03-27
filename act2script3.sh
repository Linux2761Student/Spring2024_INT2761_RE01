#!/bin/bash

read -p "What is your name? " name
sleep 1
time=$(date +%H)

if [ $time -lt "12" ] 
then
	echo "Good morning, $name!"
elif [ $time -gt "17" ]
then
	echo "Good evening, $name!"
else
	echo "Good afternoon, $name!"
fi
