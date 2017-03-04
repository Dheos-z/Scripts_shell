#!/bin/bash

# Script contenant les fonctions gérant les calculs à l'aide des différents opérateurs

function somme()
{
	result=$(($1+$2))
	echo $1 "+" $2 "=" $result
} 

function soustraction()
{
	result=$(($1-$2))
	echo $1 "-" $2 "=" $result
}

function multiplication()
{
	result=$(($1*$2))
	echo $1 "*" $2 "=" $result
}

function division()
{
	result=$(($1/$2))
	echo $1 "/" $2 "=" $result
}
