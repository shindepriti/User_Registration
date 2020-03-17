#!/bin/bash -x
shopt -s extglob
echo " Wel-Come To User Registration "

read -p "Enter User First Name:-" firstName
read -p "Enter User Last Name:-" lastName
read -p "Enter User Email Id:-" emailId

firstNameRegx="^[A-Z][a-zA-Z]{2,}$"
lastNameRegx="^[A-Z][a-zA-Z]{2,}$"
emailRegx="^([a-zA-Z]{3,}([._+-]?[a-zA-Z0-9])*[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}[.]?[a-zA-Z]*)$"

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
validateUser $emailId $emailRegx
