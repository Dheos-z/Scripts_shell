#!/bin/bash

# A faire : chercher un moyen de détecter une alternance de nombre/opérateurs

# Ecrire un script capable de reconnaître la syntaxe nombres/opérateurs
# Doit commencer par un nombre, puis alterner entre nombre & opérateur

for i in $*
do
	case $i in
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
		# Alors c'est un nombre
		echo "nombre"
		;;
	esac

# A partir d'ici 
	


done
