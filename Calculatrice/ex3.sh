#!/bin/bash

# Faire des calculs simples sans parenthèses à 2 opérandes. Ex : 5 + 6 // 8 x 7 // 14 - 22

source fct_opérateurs.sh
# Inclusion des fonctions réalisant les calculs


case $2 in
	"+")
	somme $1 $3
	;;

	"-")
	soustraction $1 $3
	;;

	"x")
	multiplication $1 $3
	;;

	"/")
	division $1 $3
	;;

	*)
	echo "ntm"
	;;
esac	
