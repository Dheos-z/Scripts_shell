#!/bin/bash
# Pour indiquer que notre shell est le bash

echo $# 
# Nombre d'arguments passés au script après la commande.
# Car $0 est la commande tapée (./premierScript.sh), puis $1, $2 etc sont les arguments

echo $@
# $@ est un tableau de chaines de caractères regroupant la liste des arguments à partir de $1
