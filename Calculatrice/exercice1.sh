#!/bin/bash

# Exercice 1 : effectuer des opérations simples : somme, soustraction, division et multiplication. Exemple : ./exercice1.sh 3 4

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


somme $1 $2
soustraction $1 $2
multiplication $1 $2
division $1 $2

