#!/bin/bash

# Création d'un fichier dont PREFIXE et NOM_FICHIER sont donnés par
# l'utilisateur.

read -p "Nom du préfixe : " PREFIXE
read -p "Nom du fichier (sans l'extension .sh) : " NOM_FICHIER

NOUV_FICHIER=$PREFIXE'_'$NOM_FICHIER

# echo $PREFIXE $NOM_FICHIER $NOUV_FICHIER

FICHIER_FINAL=$NOUV_FICHIER'.sh'

touch $FICHIER_FINAL
echo "Le fichier $FICHIER_FINAL vient d'être créé. N'oubliez pas de le supprimer"
