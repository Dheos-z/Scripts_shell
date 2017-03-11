#!/bin/bash

function somme()
{
	SOMME=$(($1+$2))
	echo somme $1 $2 = $SOMME
}

function soustraction()
{
	SOUSTRACTION=$(($1-$2))
	echo sous $1 $2 = $SOUSTRACTION
}

function multiplication() 
{
	MULTIPLICATION=$(($1*$2))
	echo mult $1 $2 = $MULTIPLICATION
}

function division()
{
	DIVISION=$(($1/$2))
	echo div $1 $2 = $DIVISION 
}

somme $1 $2 
soustraction $1 $2 
multiplication $1 $2
division $1 $2
