# ⚽ MTN Elite One Prediction App

> **Application intelligente d'analyse et de prédiction pour le championnat MTN Elite One**
  
🎓 *Étudiants au Département de Génie Informatique - IUT de Douala*

---

## 🌟 Points Forts de l'Application

### 🤖 Intelligence Artificielle Avancée
- **Machine Learning** avec algorithmes SVM (Support Vector Machine)
- **Prédictions précises** basées sur l'historique des performances
- **Régression linéaire** pour analyser les tendances
- **Normalisation des données** pour des résultats optimaux

### 📊 Analyses Statistiques Complètes
- **Statistiques en temps réel** depuis la base de données MySQL
- **Top 10 buteurs** du championnat
- **Top 5 passeurs** avec performances détaillées
- **Classements dynamiques** avec évolution graphique
- **Analyses par équipe** et par joueur

### 🎯 Interface Utilisateur Intuitive
- **Interface graphique moderne** avec Tkinter
- **Navigation simple** et ergonomique
- **Affichage coloré** des résultats
- **Graphiques interactifs** avec Matplotlib
- **Messages d'erreur explicites**

### 🔄 Fonctionnement Hybride
- **Mode Analyse** : Données en temps réel depuis MySQL
- **Mode Prédiction** : Fichiers CSV pour l'intelligence artificielle
- **Fonctionnement autonome** même sans base de données

---

## 🚀 Installation et Lancement

### ⚡ Lancement Automatique (Recommandé)

L'application détecte automatiquement les dépendances manquantes et les installe !

#### 🖥️ Windows
```cmd
# Double-cliquez simplement sur :
run_app.bat
```

#### 🐧 Linux
```bash
# Rendez le script exécutable puis lancez :
chmod +x run_app.sh
./run_app.sh
```

### 🔧 Installation Manuelle (Optionnelle)

Si vous préférez installer les dépendances séparément :

#### Windows
```cmd
install_dependencies.bat
```

#### Linux
```bash
chmod +x install_dependencies.sh
./install_dependencies.sh
```

### ✨ Fonctionnement Intelligent

Les scripts de démarrage incluent maintenant une **logique d'auto-installation** :

1. **Détection automatique** des bibliothèques Python manquantes
2. **Installation automatique** des dépendances si nécessaire
3. **Vérification post-installation** pour s'assurer que tout fonctionne
4. **Lancement automatique** de l'application une fois prête

**Plus besoin de s'inquiéter des dépendances !** 🎉

---

## 🎮 Fonctionnalités Détaillées

### 🔍 Module d'Analyse (`JOUEURF.py` & `STATSF.py`)

**Statistiques des Joueurs :**
- ✅ Top buteurs par équipe et général
- ✅ Meilleurs passeurs du championnat
- ✅ Classement des meilleurs joueurs (buts + passes)
- ✅ Statistiques individuelles détaillées

**Statistiques des Équipes :**
- ✅ Classement général en temps réel
- ✅ Points, matchs joués, buts marqués/encaissés
- ✅ Différentiel de buts et positions
- ✅ Graphiques d'évolution par journée

### 🤖 Module de Prédiction (`mltf.py`)

**Intelligence Artificielle :**
- ✅ Algorithme SVM avec noyau gaussien
- ✅ Prédiction de résultats (Victoire/Nul/Défaite)
- ✅ Estimation de scores probables
- ✅ Calcul de précision des modèles

**Analyses Avancées :**
- ✅ Régression linéaire sur les performances
- ✅ Statistiques descriptives (moyenne, variance, écart-type)
- ✅ Taux de victoire/nul/défaite
- ✅ Graphiques de tendances

---

## 🗄️ Configuration de la Base de Données

### Installation MySQL

**Windows :**
- XAMPP, WAMP, ou MySQL Installer officiel

**Linux :**
```bash
# Ubuntu/Debian
sudo apt install mysql-server

# CentOS/RHEL  
sudo yum install mysql-server

# Fedora
sudo dnf install mysql-server
```

### Import de la Base

1. **Démarrez MySQL**
2. **Importez le fichier SQL :**
   ```sql
   mysql -u root -p mtneliteone < database/mtneliteone.sql
   ```

3. **Configuration de connexion :**
   - Host: `localhost`
   - User: `root`
   - Password: `` (vide par défaut)
   - Database: `mtneliteone`

---

## 📁 Structure du Projet

```
MTN-Elite-One-App/
├── 📄 main.py                    # Interface principale
├── 📄 JOUEURF.py                 # Statistiques des joueurs
├── 📄 STATSF.py                  # Statistiques des équipes
├── 📄 mltf.py                    # Module de prédiction IA
├── 📁 database/                  # Base de données SQL
│   └── mtneliteone.sql
├── 📁 donnees/                   # Fichiers CSV des équipes
│   ├── aigle.csv
│   ├── astres.csv
│   └── ... (16 équipes)
├── 📁 dist/                      # Exécutable compilé
│   └── PredictionApp.exe
├── 🔧 install_dependencies.bat   # Installation Windows
├── 🔧 run_app.bat               # Lancement Windows
├── 🔧 install_dependencies.sh   # Installation Linux
├── 🔧 run_app.sh               # Lancement Linux
└── 📖 README.md                 # Ce fichier
```

---

## 🛠️ Technologies Utilisées

| Technologie | Usage | Version |
|-------------|-------|---------|
| **Python** | Langage principal | 3.7+ |
| **Tkinter** | Interface graphique | Inclus |
| **MySQL** | Base de données | 5.7+ |
| **Pandas** | Manipulation CSV | Latest |
| **NumPy** | Calculs numériques | Latest |
| **Scikit-learn** | Machine Learning | Latest |
| **Matplotlib** | Graphiques | Latest |
| **PyInstaller** | Compilation exe | Latest |

---

## 🎯 Modes de Fonctionnement

### 🔴 Mode ANALYSE (Nécessite MySQL)
- ✅ **Données en temps réel** depuis la base
- ✅ **Statistiques actualisées** automatiquement
- ✅ **Classements dynamiques**
- ✅ **Performances des joueurs**

### 🟢 Mode PRÉDICTION (Autonome)
- ✅ **Fonctionne sans MySQL**
- ✅ **Utilise les fichiers CSV**
- ✅ **Intelligence artificielle**
- ✅ **Prédictions de matchs**

---

## 🏆 Équipes Supportées

L'application couvre les **16 équipes** du championnat MTN Elite One :

| Équipes | Équipes | Équipes | Équipes |
|---------|---------|---------|---------|
| Aigle Royal | Astres | Bamboutos | Bamenda |
| Canon Yaoundé | Colombe | Coton Sport | Dynamo Douala |
| Fauve Azur Elite | Fortuna Mfou | Gazelle | Panthère |
| Stade Renard | Union Douala | Victoria United | YOSA |

---

## ⚠️ Résolution de Problèmes

### Problèmes Courants

**Python non trouvé :**
```bash
# Vérifiez l'installation Python
python --version
# ou
python3 --version
```

**Dépendances manquantes :**
```bash
# Les dépendances s'installent automatiquement !
# Si problème, relancez simplement :
./run_app.sh      # Linux
run_app.bat       # Windows

# Ou installation manuelle :
./install_dependencies.sh  # Linux
install_dependencies.bat   # Windows
```

**MySQL non accessible :**
- ✅ La **prédiction fonctionne** sans MySQL
- ⚠️ L'**analyse nécessite** MySQL démarré
- 🔧 Vérifiez le service MySQL

**Fichiers CSV manquants :**
- ✅ Vérifiez le dossier `donnees/`
- ✅ 16 fichiers CSV requis pour la prédiction

---

## 🎨 Captures d'Écran

### Interface Principale
- 🎯 **Bouton ANALYSE** : Accès aux statistiques
- 🤖 **Bouton PRÉDICTION** : Intelligence artificielle

### Module d'Analyse
- 📊 **Tableaux interactifs** avec tri
- 🎨 **Code couleur** pour le classement
- 📈 **Graphiques d'évolution**

### Module de Prédiction
- 🔮 **Sélection d'équipes** intuitive
- 📊 **Résultats détaillés** avec précision
- 📈 **Graphiques de régression**

---

## 🔮 Algorithmes de Prédiction

### Support Vector Machine (SVM)
- **Noyau gaussien (RBF)** pour la classification
- **Variables d'entrée :** Buts marqués, buts encaissés, différentiel
- **Sortie :** Victoire (1), Nul (0), Défaite (-1)
- **Précision affichée** pour chaque prédiction

### Estimation de Score
- **Moyenne des buts** marqués par équipe
- **Analyse défensive** (buts encaissés)
- **Calcul différentiel** pour le score final
- **Bornes réalistes** (scores ≥ 0)

---

## 📞 Support et Contact

**Développeur :** Doungmo Tchoupou Nathanel  
**Institution :** IUT de Douala - Génie Informatique  
**Projet :** Application de prédiction sportive avec IA

### En cas de problème :
1. 🔍 Consultez ce README
2. 🧪 Exécutez les scripts de test
3. 🔧 Vérifiez les prérequis système
4. 📧 Contactez le développeur

---

## 📜 Licence et Utilisation

Cette application a été développée dans un cadre académique pour démontrer l'application de l'intelligence artificielle au sport camerounais.

**Utilisation libre** pour l'éducation et la recherche.

---

*Fait avec ❤️ pour le football camerounais* ⚽🇨🇲