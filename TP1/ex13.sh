#!/bin/bash

# Creation d'un fichier exécutable avec l'extension .sh

PREFIXE=$1
NOM_FICHIER=$2

NOUV_FICHIER=$PREFIXE'_'$NOM_FICHIER

# echo $PREFIXE $NOM_FICHIER $NOUV_FICHIER

FICHIER_FINAL=$NOUV_FICHIER'.sh'

touch $FICHIER_FINAL
echo "Le fichier $FICHIER_FINAL vient d'être créé. N'oubliez pas de le supprimer"
