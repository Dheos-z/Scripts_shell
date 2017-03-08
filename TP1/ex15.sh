#!/bin/bash

# Création d'un répertoire + création de N fichiers.sh dans ce répertoire,
# numérotés de 0 à N

read -p "Nom du répertoire : " PREFIXE

if [ -e $PREFIXE ]
then
	echo "Le fichier/répertoire $PREFIXE existe déjà!"
	exit 0
fi

read -p "Nom du fichier (sans l'extension .sh) : " NOM_FICHIER
read -p "Combien de fichiers faut-il créer ? " N

mkdir $PREFIXE
cd $PREFIXE

for((i=0; i<N; i++))
do
	FICHIER_COURANT=$NOM_FICHIER$i'.sh'
	touch $FICHIER_COURANT
	echo "Création du fichier $FICHIER_COURANT"
done

echo 'Fait!'

# Pour supprimer le répertoire créé, il faut utiliser rm repertoire -r 
# Permet d'effacer le répertoire en mode récursif
