#!/bin/bash

echo "========================================"
echo "    INSTALLATION DES DEPENDANCES"
echo "    MTN Elite One Prediction App"
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

# Vérification de Python
echo "[1/7] Vérification de Python..."
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
    print_success "Python3 détecté: $(python3 --version)"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
    print_success "Python détecté: $(python --version)"
else
    print_error "Python n'est pas installé"
    echo "Veuillez installer Python3:"
    echo "  Ubuntu/Debian: sudo apt update && sudo apt install python3 python3-pip"
    echo "  CentOS/RHEL: sudo yum install python3 python3-pip"
    echo "  Fedora: sudo dnf install python3 python3-pip"
    echo "  Arch: sudo pacman -S python python-pip"
    exit 1
fi
echo

# Vérification de pip
echo "[2/7] Vérification de pip..."
if command -v pip3 &> /dev/null; then
    PIP_CMD="pip3"
    print_success "pip3 disponible"
elif command -v pip &> /dev/null; then
    PIP_CMD="pip"
    print_success "pip disponible"
else
    print_error "pip n'est pas disponible"
    echo "Installation de pip..."
    if command -v apt &> /dev/null; then
        sudo apt update && sudo apt install python3-pip
    elif command -v yum &> /dev/null; then
        sudo yum install python3-pip
    elif command -v dnf &> /dev/null; then
        sudo dnf install python3-pip
    elif command -v pacman &> /dev/null; then
        sudo pacman -S python-pip
    else
        print_error "Gestionnaire de paquets non reconnu. Installez pip manuellement."
        exit 1
    fi
    PIP_CMD="pip3"
fi
echo

# Mise à jour de pip
echo "[3/7] Mise à jour de pip..."
$PYTHON_CMD -m pip install --upgrade pip --user
echo

# Installation des dépendances système (tkinter)
echo "[4/7] Installation des dépendances système..."
if command -v apt &> /dev/null; then
    print_info "Système Debian/Ubuntu détecté"
    sudo apt update
    sudo apt install -y python3-tk python3-dev
elif command -v yum &> /dev/null; then
    print_info "Système CentOS/RHEL détecté"
    sudo yum install -y tkinter python3-devel
elif command -v dnf &> /dev/null; then
    print_info "Système Fedora détecté"
    sudo dnf install -y python3-tkinter python3-devel
elif command -v pacman &> /dev/null; then
    print_info "Système Arch détecté"
    sudo pacman -S tk python
else
    print_warning "Gestionnaire de paquets non reconnu. Tkinter pourrait ne pas fonctionner."
fi
echo

# Installation des dépendances Python
echo "[5/7] Installation des dépendances Python..."

dependencies=("mysql-connector-python" "pandas" "numpy" "scikit-learn" "matplotlib")

for dep in "${dependencies[@]}"; do
    echo "Installation de $dep..."
    $PIP_CMD install "$dep" --user
    if [ $? -eq 0 ]; then
        print_success "$dep installé"
    else
        print_error "Échec de l'installation de $dep"
    fi
done
echo

# Vérification des installations
echo "[6/7] Vérification des installations..."
$PYTHON_CMD -c "import mysql.connector; print('✓ mysql-connector-python')" 2>/dev/null || print_error "mysql-connector-python ÉCHEC"
$PYTHON_CMD -c "import pandas; print('✓ pandas')" 2>/dev/null || print_error "pandas ÉCHEC"
$PYTHON_CMD -c "import numpy; print('✓ numpy')" 2>/dev/null || print_error "numpy ÉCHEC"
$PYTHON_CMD -c "import sklearn; print('✓ scikit-learn')" 2>/dev/null || print_error "scikit-learn ÉCHEC"
$PYTHON_CMD -c "import matplotlib; print('✓ matplotlib')" 2>/dev/null || print_error "matplotlib ÉCHEC"
$PYTHON_CMD -c "import tkinter; print('✓ tkinter')" 2>/dev/null || print_error "tkinter ÉCHEC"
echo

# Installation optionnelle de PyInstaller
echo "[7/7] Installation optionnelle de PyInstaller..."
read -p "Voulez-vous installer PyInstaller pour recompiler l'exécutable? (o/n): " choice
case "$choice" in 
    o|O|oui|OUI|yes|YES ) 
        $PIP_CMD install pyinstaller --user
        print_success "PyInstaller installé!"
        ;;
    * ) 
        print_info "PyInstaller ignoré."
        ;;
esac
echo

echo "========================================"
echo "    INSTALLATION TERMINÉE!"
echo "========================================"
echo
print_success "Toutes les dépendances ont été installées."
print_info "Vous pouvez maintenant lancer l'application avec ./run_app.sh"
echo
print_warning "IMPORTANT: Assurez-vous que MySQL est installé et que"
print_warning "la base de données mtneliteone est importée pour utiliser"
print_warning "les fonctionnalités d'analyse."
echo
echo "Pour installer MySQL sur votre système:"
echo "  Ubuntu/Debian: sudo apt install mysql-server"
echo "  CentOS/RHEL: sudo yum install mysql-server"
echo "  Fedora: sudo dnf install mysql-server"
echo "  Arch: sudo pacman -S mysql"
echo

read -p "Appuyez sur Entrée pour continuer..."