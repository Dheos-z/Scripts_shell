#!/bin/bash

# Reconnaitre les différents arguments (parenthèse ouvrante/fermante, nombre, opérateur)

echo "bonjour"

for i in $*
do
echo $i
	case ${!i} in
		"(")
			echo "parenthèse ouvrante"
			;;
		")")
			echo "parenthèse fermante"
			;;
		"+")
			echo "somme"
			;;
		"-")
			echo "soustraction"
			;;
		"x")
			echo "multiplication"
			;;
		"/")
			echo "division"
			;;
		*)
			echo "nombre"
			;;
	esac
done

 
