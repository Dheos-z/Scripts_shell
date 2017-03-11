#!/bin/bash

function somme()
{
	RESULTAT=$(($1+$2))
}

function soustraction()
{
	RESULTAT=$(($1-$2))
}

function multiplication() 
{
	RESULTAT=$(($1*$2))
}

function division()
{
	RESULTAT=$(($1/$2))
}

function calcul()
{
	if [ $2 = '/' ]
		then 
			division $1 $3 
	elif [ $2 = 'x' ]
		then
			multiplication $1 $3 
	elif [ $2 = '-' ]
		then
			soustraction $1 $3 
	else 
		somme $1 $3 
	fi
}

calcul $1 $2 $3 
calcul $RESULTAT $4 $5
echo $RESULTAT
