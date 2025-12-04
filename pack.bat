@echo off
REM 
REM création des compendiums du module CSB Basic Instinct System
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************* *
echo * start create compendiums          *
echo * ********************************* *
echo.
echo /// configure environment
call fvtt package workon csb-basic-instinct-system --type=Module
echo.
echo /// pack compendium "templates-acteurs"
call fvtt package pack templates-acteurs
echo.
echo /// pack compendium "templates-objets"
call fvtt package pack templates-objets
echo.
echo /// pack compendium "basic-instinct-system-rules"
call fvtt package pack basic-instinct-system-rules
echo.
echo * ********************************* *
echo * all compendiums have been created *
echo * ********************************* *
echo.
@echo on
