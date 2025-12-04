#!/usr/bin/env bash

#
# dépaquetage des compendiums du module CSB Basic Instinct System
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
    echo 'Usage: ./unpack.sh
unpack les compendiums du module CSB Basic Instinct System'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************** *"
echo "* start unpack compendiums           *"
echo "* ********************************** *"

echo "  * configure environment"
fvtt package workon csb-basic-instinct-system --type=Module

echo "  * unpack compendium templates-acteurs"
fvtt package unpack -c templates-acteurs
echo "  * unpack compendium templates-objets"
fvtt package unpack -c templates-objets
echo "  * unpack compendium basic-instinct-system-rules"
fvtt package unpack -c basic-instinct-system-rules

echo "* ********************************** *"
echo "* all compendiums have been unpacked *"
echo "* ********************************** *"
echo

cd ${workdirectory-}
