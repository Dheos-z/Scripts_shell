#!/bin/bash

function somme()
{
	SOMME=$(($1+$2))
	echo $SOMME
}

function soustraction()
{
	SOUSTRACTION=$(($1-$2))
	echo $SOUSTRACTION
}

function multiplication() 
{
	MULTIPLICATION=$(($1*$2))
	echo $MULTIPLICATION
}

function division()
{
	DIVISION=$(($1/$2))
	echo $DIVISION 
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
