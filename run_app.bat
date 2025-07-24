@echo off
chcp 65001 >nul
echo ========================================
echo    MTN ELITE ONE PREDICTION APP
echo    Lancement de l'application
echo ========================================
echo.

REM Vérification de Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERREUR: Python n'est pas installe ou pas dans le PATH
    echo Veuillez d'abord executer install_dependencies.bat
    pause
    exit /b 1
)

REM Vérification des dépendances critiques
echo Verification des dependances...
set "missing_deps="

python -c "import mysql.connector" >nul 2>&1 || set "missing_deps=%missing_deps% mysql-connector-python"
python -c "import pandas" >nul 2>&1 || set "missing_deps=%missing_deps% pandas"
python -c "import numpy" >nul 2>&1 || set "missing_deps=%missing_deps% numpy"
python -c "import sklearn" >nul 2>&1 || set "missing_deps=%missing_deps% scikit-learn"
python -c "import matplotlib" >nul 2>&1 || set "missing_deps=%missing_deps% matplotlib"
python -c "import tkinter" >nul 2>&1 || set "missing_deps=%missing_deps% tkinter"

if not "%missing_deps%"=="" (
    echo ERREUR: Dependances manquantes:%missing_deps%
    echo.
    echo Lancement automatique de l'installation des dependances...
    echo ========================================
    call install_dependencies.bat
    if %errorlevel% neq 0 (
        echo ERREUR: L'installation des dependances a echoue
        pause
        exit /b 1
    )
    echo ========================================
    echo Installation terminee! Relancement de l'application...
    echo.
    
    REM Re-vérification des dépendances après installation
    set "missing_deps="
    python -c "import mysql.connector" >nul 2>&1 || set "missing_deps=%missing_deps% mysql-connector-python"
    python -c "import pandas" >nul 2>&1 || set "missing_deps=%missing_deps% pandas"
    python -c "import numpy" >nul 2>&1 || set "missing_deps=%missing_deps% numpy"
    python -c "import sklearn" >nul 2>&1 || set "missing_deps=%missing_deps% scikit-learn"
    python -c "import matplotlib" >nul 2>&1 || set "missing_deps=%missing_deps% matplotlib"
    python -c "import tkinter" >nul 2>&1 || set "missing_deps=%missing_deps% tkinter"
    
    if not "%missing_deps%"=="" (
        echo ERREUR: Certaines dependances sont encore manquantes:%missing_deps%
        echo Veuillez verifier l'installation manuellement
        pause
        exit /b 1
    )
)
echo Dependances OK!
echo.

REM Vérification des fichiers nécessaires
if not exist "main.py" (
    echo ERREUR: main.py introuvable
    echo Assurez-vous d'etre dans le bon repertoire
    pause
    exit /b 1
)

if not exist "donnees" (
    echo ERREUR: Dossier 'donnees' introuvable
    echo Les fichiers CSV des equipes sont necessaires pour la prediction
    pause
    exit /b 1
)

REM Vérification de MySQL (optionnel pour la prédiction)
echo Verification de la connexion MySQL...
python -c "import mysql.connector; conn = mysql.connector.connect(host='localhost', user='root', password='', database='mtneliteone'); print('OK Connexion MySQL')" 2>nul
if %errorlevel% neq 0 (
    echo ATTENTION: Connexion MySQL echouee
    echo Les fonctionnalites d'ANALYSE ne seront pas disponibles
    echo Seule la PREDICTION fonctionnera avec les fichiers CSV
    echo.
    echo Pour utiliser l'analyse:
    echo 1. Demarrez MySQL/XAMPP/WAMP
    echo 2. Importez database/mtneliteone.sql
    echo 3. Relancez cette application
    echo.
) else (
    echo OK Base de donnees MySQL accessible
    echo.
)

echo ========================================
echo    LANCEMENT DE L'APPLICATION
echo ========================================
echo.

REM Lancement de l'application principale
echo Demarrage de MTN Elite One...
python main.py

REM Gestion des erreurs de lancement
if %errorlevel% neq 0 (
    echo.
    echo ERREUR lors du lancement de l'application
    echo Code d'erreur: %errorlevel%
    echo.
    echo Solutions possibles:
    echo 1. Verifiez que toutes les dependances sont installees
    echo 2. Executez install_dependencies.bat
    echo 3. Verifiez que MySQL est demarre ^(pour l'analyse^)
    echo 4. Verifiez que les fichiers CSV sont dans le dossier 'donnees'
    echo.
)

echo.
echo Application fermee.
pause