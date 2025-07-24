#!/bin/bash

echo "========================================"
echo "    MTN ELITE ONE PREDICTION APP"
echo "    Lancement de l'application"
echo "========================================"
echo

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Fonction pour afficher les messages colorés
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

# Détection de Python
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
else
    print_error "Python n'est pas installé ou pas dans le PATH"
    echo "Veuillez d'abord exécuter ./install_dependencies.sh"
    read -p "Appuyez sur Entrée pour continuer..."
    exit 1
fi

print_success "Python détecté: $($PYTHON_CMD --version)"

# Vérification des dépendances critiques
echo "Vérification des dépendances..."

# Vérification détaillée des dépendances
missing_deps=""
$PYTHON_CMD -c "import mysql.connector" &> /dev/null || missing_deps="$missing_deps mysql-connector-python"
$PYTHON_CMD -c "import pandas" &> /dev/null || missing_deps="$missing_deps pandas"
$PYTHON_CMD -c "import numpy" &> /dev/null || missing_deps="$missing_deps numpy"
$PYTHON_CMD -c "import sklearn" &> /dev/null || missing_deps="$missing_deps scikit-learn"
$PYTHON_CMD -c "import matplotlib" &> /dev/null || missing_deps="$missing_deps matplotlib"
$PYTHON_CMD -c "import tkinter" &> /dev/null || missing_deps="$missing_deps tkinter"

if [ ! -z "$missing_deps" ]; then
    print_error "Dépendances manquantes:$missing_deps"
    echo
    echo "Lancement automatique de l'installation des dépendances..."
    echo "========================================"
    
    # Rendre le script d'installation exécutable s'il ne l'est pas
    chmod +x install_dependencies.sh
    
    # Lancer l'installation
    ./install_dependencies.sh
    if [ $? -ne 0 ]; then
        print_error "L'installation des dépendances a échoué"
        read -p "Appuyez sur Entrée pour continuer..."
        exit 1
    fi
    
    echo "========================================"
    print_success "Installation terminée! Relancement de l'application..."
    echo
    
    # Re-vérification des dépendances après installation
    missing_deps=""
    $PYTHON_CMD -c "import mysql.connector" &> /dev/null || missing_deps="$missing_deps mysql-connector-python"
    $PYTHON_CMD -c "import pandas" &> /dev/null || missing_deps="$missing_deps pandas"
    $PYTHON_CMD -c "import numpy" &> /dev/null || missing_deps="$missing_deps numpy"
    $PYTHON_CMD -c "import sklearn" &> /dev/null || missing_deps="$missing_deps scikit-learn"
    $PYTHON_CMD -c "import matplotlib" &> /dev/null || missing_deps="$missing_deps matplotlib"
    $PYTHON_CMD -c "import tkinter" &> /dev/null || missing_deps="$missing_deps tkinter"
    
    if [ ! -z "$missing_deps" ]; then
        print_error "Certaines dépendances sont encore manquantes:$missing_deps"
        echo "Veuillez vérifier l'installation manuellement"
        read -p "Appuyez sur Entrée pour continuer..."
        exit 1
    fi
fi
print_success "Dépendances OK!"
echo

# Vérification des fichiers nécessaires
if [ ! -f "main.py" ]; then
    print_error "main.py introuvable"
    echo "Assurez-vous d'être dans le bon répertoire"
    read -p "Appuyez sur Entrée pour continuer..."
    exit 1
fi

if [ ! -d "donnees" ]; then
    print_error "Dossier 'donnees' introuvable"
    echo "Les fichiers CSV des équipes sont nécessaires pour la prédiction"
    read -p "Appuyez sur Entrée pour continuer..."
    exit 1
fi

# Vérification de MySQL (optionnel pour la prédiction)
echo "Vérification de la connexion MySQL..."
$PYTHON_CMD -c "import mysql.connector; conn = mysql.connector.connect(host='localhost', user='root', password='', database='mtneliteone'); print('✓ Connexion MySQL OK')" 2>/dev/null
if [ $? -ne 0 ]; then
    print_warning "Connexion MySQL échouée"
    echo "Les fonctionnalités d'ANALYSE ne seront pas disponibles"
    echo "Seule la PRÉDICTION fonctionnera avec les fichiers CSV"
    echo
    echo "Pour utiliser l'analyse:"
    echo "1. Démarrez MySQL (sudo systemctl start mysql)"
    echo "2. Importez database/mtneliteone.sql"
    echo "3. Relancez cette application"
    echo
else
    print_success "Base de données MySQL accessible"
    echo
fi

echo "========================================"
echo "    LANCEMENT DE L'APPLICATION"
echo "========================================"
echo

# Lancement de l'application principale
print_info "Démarrage de MTN Elite One..."
$PYTHON_CMD main.py

# Gestion des erreurs de lancement
exit_code=$?
if [ $exit_code -ne 0 ]; then
    echo
    print_error "ERREUR lors du lancement de l'application"
    echo "Code d'erreur: $exit_code"
    echo
    echo "Solutions possibles:"
    echo "1. Vérifiez que toutes les dépendances sont installées"
    echo "2. Exécutez ./install_dependencies.sh"
    echo "3. Vérifiez que MySQL est démarré (pour l'analyse)"
    echo "4. Vérifiez que les fichiers CSV sont dans le dossier 'donnees'"
    echo "5. Vérifiez les permissions d'exécution: chmod +x *.sh"
    echo
fi

echo
print_info "Application fermée."
read -p "Appuyez sur Entrée pour continuer..."