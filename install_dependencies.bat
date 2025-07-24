@echo off
echo ========================================
echo    INSTALLATION DES DEPENDANCES
echo    MTN Elite One Prediction App
echo ========================================
echo.

REM Vérification de Python
echo [1/6] Verification de Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERREUR: Python n'est pas installe ou pas dans le PATH
    echo Veuillez installer Python depuis https://python.org
    pause
    exit /b 1
)
echo Python detecte avec succes!
echo.

REM Vérification de pip
echo [2/6] Verification de pip...
python -m pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERREUR: pip n'est pas disponible
    echo Tentative d'installation de pip...
    python -m ensurepip --upgrade
)
echo pip disponible!
echo.

REM Mise à jour de pip
echo [3/6] Mise a jour de pip...
python -m pip install --upgrade pip
echo.

REM Installation des dépendances principales
echo [4/6] Installation des dependances principales...
echo Installation de mysql-connector-python...
python -m pip install mysql-connector-python

echo Installation de pandas...
python -m pip install pandas

echo Installation de numpy...
python -m pip install numpy

echo Installation de scikit-learn...
python -m pip install scikit-learn

echo Installation de matplotlib...
python -m pip install matplotlib
echo.

REM Vérification des installations
echo [5/6] Verification des installations...
python -c "import mysql.connector; print('✓ mysql-connector-python')" 2>nul || echo "✗ mysql-connector-python ECHEC"
python -c "import pandas; print('✓ pandas')" 2>nul || echo "✗ pandas ECHEC"
python -c "import numpy; print('✓ numpy')" 2>nul || echo "✗ numpy ECHEC"
python -c "import sklearn; print('✓ scikit-learn')" 2>nul || echo "✗ scikit-learn ECHEC"
python -c "import matplotlib; print('✓ matplotlib')" 2>nul || echo "✗ matplotlib ECHEC"
python -c "import tkinter; print('✓ tkinter (inclus avec Python)')" 2>nul || echo "✗ tkinter ECHEC"
echo.

REM Installation optionnelle de PyInstaller (pour recompiler l'exe si nécessaire)
echo [6/6] Installation optionnelle de PyInstaller...
echo Voulez-vous installer PyInstaller pour recompiler l'executable? (o/n)
set /p choice=
if /i "%choice%"=="o" (
    python -m pip install pyinstaller
    echo PyInstaller installe!
) else (
    echo PyInstaller ignore.
)
echo.

echo ========================================
echo    INSTALLATION TERMINEE!
echo ========================================
echo.
echo Toutes les dependances ont ete installees.
echo Vous pouvez maintenant lancer l'application avec run_app.bat
echo.
echo IMPORTANT: Assurez-vous que MySQL est installe et que
echo la base de donnees mtneliteone est importee pour utiliser
echo les fonctionnalites d'analyse.
echo.
pause