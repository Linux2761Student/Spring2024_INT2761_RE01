#!/bin/bash

read -p "What is your first name? " first
sleep 1
read -p "What is your last name? " last
sleep 1
read -p "What is your student ID? " id
sleep 1

if [ $id = "1234" ]
then
	echo "Welcome $first $last, welcome to your virtual machine!"
else
	echo "Error, invalid studentID: $id. Please try again."
fi
sleep 1
