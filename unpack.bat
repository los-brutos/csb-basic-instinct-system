@echo off
REM 
REM dépaquetage des compendiums du module CSB Basic Instinct System
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************** *
echo * start unpack compendiums           *
echo * ********************************** *
echo.
echo /// configure environment
call fvtt package workon csb-basic-instinct-system --type=Module
echo.
echo /// unpack compendium "templates-acteurs"
call fvtt package unpack -c templates-acteurs
echo.
echo /// unpack compendium "templates-objets"
call fvtt package unpack -c templates-objets
echo.
echo /// unpack compendium "basic-instinct-system-rules"
call fvtt package unpack -c basic-instinct-system-rules
echo.
echo * ********************************** *
echo * all compendiums have been unpacked *
echo * ********************************** *
echo.
@echo on
