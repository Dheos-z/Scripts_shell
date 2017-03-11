#!/bin/bash

nature[0]='truc'
para[0]='chose'
for((i=1;i<=$#;i++));
do
	j=$(($i-1))
	if [ ${!i} = "(" ]
		then 
			echo para ouvrante 
			nature[$i]='para'
			para[1]='para_ouvrante'
			if [ ${para[0]} = ${para[1]} ]
				then 
					echo "**erreur parenthèses!**"
			fi
			para[0]=${para[1]}
	elif [ ${!i} = ")" ]
		then 
			echo para fermante
			nature[$i]='para'
			para[1]='para_fermante'
			if [ ${para[0]} = ${para[1]} ]
				then 
					echo "**erreur parenthèses!**"
			fi
			para[0]=${para[1]}
	elif [ ${!i} = "/" ]
		then 
			echo division
			nature[$i]='operation'
			if [ ${nature[$i]} = ${nature[$i-1]} ]
				then
					echo "**erreur d'alternance!**  il y a deux opérations à la suite"
			fi
	elif [ ${!i} = "x" ]
		then 
			echo multiplication
			nature[$i]='operation'
			if [ ${nature[$i]} = ${nature[$i-1]} ]
				then
					echo "**erreur d'alternance!**  il y a deux opérations à la suite"
			fi
	elif [ ${!i} = "-" ]
		then 
			echo soustraction
			nature[$i]='operation' 
			if [ ${nature[$i]} = ${nature[$i-1]} ]
				then
					echo "**erreur d'alternance!**  il y a deux opérations à la suite"
			fi
	elif [ ${!i} = "+" ]
		then
			echo somme
			nature[$i]='operation'
			if [ ${nature[$i]} = ${nature[$i-1]} ]
				then
					echo "**erreur d'alternance!**  il y a deux opérations à la suite"
			fi
	else 
		echo entier
		nature[${i}]='entier'
		if [ ${nature[${i}]} = ${nature[${j}]} ]
				then
					echo "**erreur d'alternance!**  il y a deux nombres à la suite"
			fi
	fi
done
