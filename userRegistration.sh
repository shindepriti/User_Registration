#!/bin/bash -x
shopt -s extglob
echo " Wel-Come To User Registration "

read -p "Enter User First name:-" firstName
firstNameRegx="^[A-Z][a-zA-Z]{2,}$"

function validateUser(){
	if [[	$1 =~ $2    ]]
	then
		echo "valid "
	else
		echo  "Invalid"
	fi
}
validateUser $firstName  $firstNameRegx 
