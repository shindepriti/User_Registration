#!/bin/bash -x
shopt -s extglob
echo " Wel-Come To User Registration "

read -p "Enter User First Name:-" firstName
read -p "Enter User Last Name:-" lastName
read -p "Enter User Email Id:-" emailId
read -p "Enter User Mobile Number:-" mobileNumber

firstNameRegx="^[A-Z][a-zA-Z]{2,}$"
lastNameRegx="^[A-Z][a-zA-Z]{2,}$"
emailRegx="^([a-zA-Z]{3,}([._+-]?[a-zA-Z0-9])*[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}[.]?[a-zA-Z]*)$"
mobileRegx="[0-9]{2}\s?[0-9]{10}$"

function validateUser(){
	local symbol=$1
	local pattern=$2
	if [[ $symbol =~ $pattern ]]
	then
		echo "valid "
	else
		echo  "Invalid"
	fi
}
validateUser $firstName $firstNameRegx 
validateUser $lastName $lastNameRegx
validateUser $emailId $emailRegx

function validateMobile(){
	if	[[ $mobileNumber =~ $mobileRegx ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
validateMobile
