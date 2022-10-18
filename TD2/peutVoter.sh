#!/bin/sh

voter(){
    if [ $2 -gt 18 ] 
    then
	   echo "bonjour $1,tu peux voter!"
    else
	   echo "bonjour $1,tu peux pas voter!"
    fi 
}

read -p "Nom : " nom
read -p "Age : " age

voter $nom $age
