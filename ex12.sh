#!/bin/bash

# Concatenation de PREFIXE et NOM_FICHIER dans la variable NOUV_FICHIER

PREFIXE=$1
NOM_FICHIER=$2

NOUV_FICHIER=$PREFIXE'_'$NOM_FICHIER

echo $PREFIXE $NOM_FICHIER $NOUV_FICHIER

# Facile
