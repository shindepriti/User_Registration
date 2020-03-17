#!/bin/bash -x
shopt -s extglob
echo " Wel-Come To User Registration "

read -p "Enter User First Name:-" firstName
read -p "Enter User Last Name:-" lastName

firstNameRegx="^[A-Z][a-zA-Z]{2,}$"
lastNameRegx="^[A-Z][a-zA-Z]{2,}$"

function validateUser(){
	if [[	$1 =~ $2    ]]
	then
		echo "valid "
	else
		echo  "Invalid"
	fi
}
validateUser $firstName $firstNameRegx 
validateUser $lastName $lastNameRegx
