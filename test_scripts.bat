@echo off
echo ========================================
echo    TEST DES SCRIPTS BATCH
echo ========================================
echo.

echo Test 1: Verification de Python...
python --version
if %errorlevel% neq 0 (
    echo ECHEC: Python non detecte
    goto :end
)
echo OK: Python detecte
echo.

echo Test 2: Verification de pip...
python -m pip --version
if %errorlevel% neq 0 (
    echo ECHEC: pip non disponible
    goto :end
)
echo OK: pip disponible
echo.

echo Test 3: Test des dependances...
python -c "import mysql.connector, pandas, numpy, sklearn, matplotlib, tkinter; print('Toutes les dependances OK')"
if %errorlevel% neq 0 (
    echo ECHEC: Dependances manquantes
    echo Executez install_dependencies.bat
    goto :end
)
echo OK: Dependances presentes
echo.

echo Test 4: Verification des fichiers...
if not exist "main.py" (
    echo ECHEC: main.py manquant
    goto :end
)
echo OK: main.py present

if not exist "donnees" (
    echo ECHEC: dossier donnees manquant
    goto :end
)
echo OK: dossier donnees present
echo.

echo Test 5: Test de connexion MySQL...
python -c "import mysql.connector; conn = mysql.connector.connect(host='localhost', user='root', password='', database='mtneliteone'); print('MySQL OK')" 2>nul
if %errorlevel% neq 0 (
    echo ATTENTION: MySQL non accessible (normal si pas installe)
    echo La prediction fonctionnera quand meme
) else (
    echo OK: MySQL accessible
)
echo.

echo ========================================
echo    TOUS LES TESTS PASSES!
echo ========================================
echo Les scripts sont prets a etre utilises.

:end
echo.
pause