#!/bin/bash

# A faire : chercher un moyen de détecter une alternance de nombre/opérateurs

# Ecrire un script capable de reconnaître la syntaxe nombres/opérateurs
# Doit commencer par un nombre, puis alterner entre nombre & opérateur

for((i=1;i<=$#;i++))
{
	case ${!i} in
		"(")
		echo "parenthèse ouvrante"
		SALUT[$i]="ouvrante"
		;;
		
		")")
		echo "parenthèse fermante"
		SALUT[$i]="fermante"
		;;
		
		"+")
		echo "somme"
		SALUT[$i]="operateur"
		;;
		
		"-")
		echo "soustraction"
		SALUT[$i]="operateur"
		;;
		
		"x")
		echo "multiplication"
		SALUT[$i]="operateur"
		;;
		
		"/")
		echo "division"
		SALUT[$i]="operateur"
		;;
		
		*)
		# Alors c'est un nombre
		echo "nombre"
		SALUT[$i]="nombre"
		;;
	esac
}

# Il faut que le premier argument soit un nombre ou une ouvrante
if [ ${SALUT[1]} != "nombre" ] && [ ${SALUT[1]} != "ouvrante" ]
then
	echo "Le 1er paramètre doit être un nombre ou une parenthèse ouvrante"
	exit
fi

# Test de la syntaxe
for((i=2;i<=$#;i++))
{
	# Nombre ou fermante : le prochain doit être ni nombre ni ouvrante
	if [ "${SALUT[$i-1]}" = "nombre" ] || [ "${SALUT[$i-1]}" = "fermante" ];
	then
		if [ "${SALUT[$i]}" = "nombre" ] || [ "${SALUT[$i]}" = "ouvrante" ];
		then
			echo "Erreur : argument n°$i est '${SALUT[$i]}'"
			exit
		fi
	
	# Opérateur ou ouvrante : le prochain doit être ni opérateur ni fermante
	elif [ "${SALUT[$i-1]}" = "operateur" ] || [ "${SALUT[$i-1]}" = "ouvrante" ];
	then
		if [ "${SALUT[$i]}" = "operateur" ] || [ "${SALUT[$i]}" = "fermante" ];
		then
			echo "Erreur : argument n°$i est '${SALUT[$i]}'"
			exit
		fi
	fi
}


	
	
