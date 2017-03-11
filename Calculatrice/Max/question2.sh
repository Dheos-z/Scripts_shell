#!/bin/bash

for((i=1;i<=$#;i++));
do
	if [ ${!i} = "(" ]
		then 
			echo para ouvrante 
	elif [ ${!i} = ")" ]
		then 
			echo para fermante
	elif [ ${!i} = "/" ]
		then 
			echo division
	elif [ ${!i} = "x" ]
		then 
			echo multiplication
	elif [ ${!i} = "-" ]
		then 
			echo soustraction 
	elif [ ${!i} = "+" ]
		then
			echo somme
	else 
		echo entier
	fi
done
