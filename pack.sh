#!/usr/bin/env bash

#
# création des compendiums du module CSB Basic Instinct System
#
# le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
#
# /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
#

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./pack.sh
génère les compendiums du module CSB Basic Instinct System'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************* *"
echo "* start create compendiums          *"
echo "* ********************************* *"

echo "  * configure environment"
fvtt package workon csb-basic-instinct-system --type=Module

echo "  * create compendiums templates"
fvtt package pack templates-acteurs
fvtt package pack templates-objets

echo "* ********************************* *"
echo "* all compendiums have been created *"
echo "* ********************************* *"
echo

cd ${workdirectory-}
