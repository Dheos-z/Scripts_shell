#!/bin/bash

# A faire : chercher un moyen de détecter une alternance de nombre/opérateurs

# Ecrire un script capable de reconnaître la syntaxe nombres/opérateurs
# Doit commencer par un nombre, puis alterner entre nombre & opérateur

for((i=1;i<=$#;i++))
{
	BONJOUR='bonjour'
	
	case ${!i} in
		"(")
		echo "parenthèse ouvrante"
		;;
		
		")")
		echo "parenthèse fermante"
		;;
		
		"+")
		echo "somme"
		SALUT[$i]="operation"
		;;
		
		"-")
		echo "soustraction"
		SALUT[$i]="operation"
		;;
		
		"x")
		echo "multiplication"
		SALUT[$i]="operation"
		;;
		
		"/")
		echo "division"
		SALUT[$i]="operation"
		;;
		
		*)
		# Alors c'est un nombre
		echo "nombre"
		SALUT[$i]="nombre"
		;;
	esac
}

for((i=2;i<=$#;i++))
{
	if [ ${SALUT[$i-1]} = "nombre" ]
	then
		if [ ${SALUT[$i]} = "nombre" ]
		then
			echo 'Erreur : deux nombres à la suite'
			exit
		fi
	elif [ ${SALUT[$i-1]} = "operation" ]
	then
		if [ ${SALUT[$i]} = "operation" ]
		then
			echo 'Erreur : deux opérations à la suite'
			exit
		fi
	fi
}


	
	
