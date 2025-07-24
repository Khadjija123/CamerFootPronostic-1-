# === IMPORTATIONS ===
import os  # Pour accéder aux fichiers du système
import pandas as pd  # Pour manipuler les données tabulaires (CSV)
import numpy as np  # Pour les fonctions numériques
import tkinter as tk  # Interface graphique
from tkinter import ttk, messagebox  # Widgets modernes et boîtes de dialogue
from sklearn.preprocessing import StandardScaler  # Normalisation des données
from sklearn.svm import SVC  # Support Vector Machine pour la prédiction
from sklearn.linear_model import LinearRegression  # Régression linéaire
from sklearn.model_selection import train_test_split  # Découpage des données
from sklearn.metrics import accuracy_score  # Évaluation de la précision
import matplotlib.pyplot as plt  # Graphiques

# === CONSTANTE ===
DATA_FOLDER = os.path.join(os.path.dirname(__file__), "donnees")
  # Dossier contenant les fichiers CSV des équipes

# === FONCTIONS UTILITAIRES ===

# Retourne la liste des fichiers CSV (équipes)
def list_teams():
    return [f.replace(".csv", "") for f in os.listdir(DATA_FOLDER) if f.endswith(".csv")]

# Chargement et nettoyage des données
def load_and_preprocess(file_path):
    df = pd.read_csv(file_path, delimiter=";", encoding="ISO-8859-1")
    df.replace(',', '.', regex=True, inplace=True)  # Conversion , → . pour les décimales
    df.iloc[:, 2:] = df.iloc[:, 2:].apply(pd.to_numeric, errors="coerce")  # Conversion numérique des colonnes sauf les 2 premières

    # Calculs de statistiques supplémentaires
    df["pourcentage victoire"] = (df["Nombre de victoire"] / df["Nombre de MJ"]) * 100
    df["pourcentage nul"] = (df["Nombre Null"] / df["Nombre de MJ"]) * 100
    df["pourcentage défaite"] = (df["Nombre de defaite"] / df["Nombre de MJ"]) * 100

    df.dropna(inplace=True)  # Suppression des lignes incomplètes
    return df

# Entraînement d’un modèle SVM
def train_svm_model(df):
    features = ["buts marqués", "buts encaissés", "DDB"]  # Variables explicatives

    # Création de la variable cible : résultat du match
    df["Résultat"] = df.apply(lambda row: 1 if row["Nombre de victoire"] > max(row["Nombre Null"], row["Nombre de defaite"])
                              else -1 if row["Nombre de defaite"] > max(row["Nombre Null"], row["Nombre de victoire"])
                              else 0, axis=1)

    X = df[features]
    y = df["Résultat"]

    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(X)  # Normalisation des données

    X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.3, random_state=42)

    model = SVC(kernel="rbf", probability=True)  # Modèle SVM avec noyau gaussien
    model.fit(X_train, y_train)

    accuracy = accuracy_score(y_test, model.predict(X_test))  # Évaluation
    return model, scaler, accuracy

# Tracer la régression linéaire sur les buts marqués
def plot_linear_regression(df, team_name):
    if len(df) < 2:
        messagebox.showinfo("Erreur", f"Pas assez de données pour {team_name}")
        return

    df = df.reset_index(drop=True)
    X = df.index.values.reshape(-1, 1)  # Matchs
    y = df["buts marqués"].values.reshape(-1, 1)

    model = LinearRegression()
    model.fit(X, y)
    y_pred = model.predict(X)

    plt.figure(figsize=(8, 5))
    plt.plot(X, y, 'bo-', label="Buts marqués réels")
    plt.plot(X, y_pred, 'r--', label="Régression linéaire")
    plt.title(f"Régression Linéaire - {team_name}")
    plt.xlabel("Match n°")
    plt.ylabel("Buts marqués")
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

# Affiche les statistiques d’une équipe dans une nouvelle fenêtre
def show_team_stats(df, team_name):
    stats = {
        "Moyenne Buts Marqués": df["buts marqués"].mean(),
        "Moyenne Buts Encaissés": df["buts encaissés"].mean(),
        "Variance Buts Marqués": df["buts marqués"].var(),
        "Variance Buts Encaissés": df["buts encaissés"].var(),
        "Écart-Type Buts Marqués": df["buts marqués"].std(),
        "Écart-Type Buts Encaissés": df["buts encaissés"].std(),
        "Taux de Victoire (%)": df["pourcentage victoire"].mean(),
        "Taux de Nul (%)": df["pourcentage nul"].mean(),
        "Taux de Défaite (%)": df["pourcentage défaite"].mean(),
    }

    # Affichage dans une fenêtre
    stat_text = f"📊 Statistiques pour {team_name} :\n\n"
    for key, value in stats.items():
        stat_text += f"{key} : {value:.2f}\n"

    stat_window = tk.Toplevel()
    stat_window.title(f"Statistiques - {team_name}")
    stat_window.geometry("400x300")
    stat_window.configure(bg="#a4d1f4")

    text = tk.Text(stat_window, font=("Segoe UI", 11), wrap="word", bg="#98cbf2", relief="flat")
    text.insert(tk.END, stat_text)
    text.config(state="disabled")
    text.pack(padx=10, pady=10, expand=True, fill="both")

# Définition d’un style graphique uniforme
def set_style():
    style = ttk.Style()
    style.theme_use("clam")
    style.configure("TFrame", background="#95c0e0")
    style.configure("TLabel", background="#93bedf", font=("Segoe UI", 11))
    style.configure("TButton", font=("Segoe UI", 10, "bold"), padding=6, background="#a4c9e1", foreground="white")
    style.map("TButton", foreground=[("active", "white")], background=[("active", "#98c8e8")])
    style.configure("TCombobox", font=("Segoe UI", 10), padding=4)

# === CLASSE PRINCIPALE DE L’APPLICATION ===
class PredictionApp:
    def __init__(self, root):
        self.root = root
        self.root.title("⚽ Prédiction de Match ")
        self.root.geometry("850x550")
        self.root.resizable(False, False)

        self.teams = list_teams()  # Chargement dynamique des équipes

        # === Zone de sélection ===
        self.frame_selection = ttk.Frame(root, padding="20")
        self.frame_selection.pack()

        ttk.Label(self.frame_selection, text="Sélectionnez deux équipes :", font=("Segoe UI", 14, "bold")).grid(column=0, row=0, columnspan=2, pady=10)

        ttk.Label(self.frame_selection, text="Équipe 1:").grid(column=0, row=1, sticky="w", pady=5)
        self.team1_var = tk.StringVar()
        self.team1_dropdown = ttk.Combobox(self.frame_selection, textvariable=self.team1_var, values=self.teams, state="readonly")
        self.team1_dropdown.grid(column=1, row=1, pady=5)

        ttk.Label(self.frame_selection, text="Équipe 2:").grid(column=0, row=2, sticky="w", pady=5)
        self.team2_var = tk.StringVar()
        self.team2_dropdown = ttk.Combobox(self.frame_selection, textvariable=self.team2_var, values=self.teams, state="readonly")
        self.team2_dropdown.grid(column=1, row=2, pady=5)

        ttk.Button(self.frame_selection, text="🔮 Lancer la Prédiction", command=self.run_prediction).grid(column=0, row=3, columnspan=2, pady=15)

        self.frame_results = ttk.Frame(root, padding="10")
        self.frame_results.pack()

        self.frame_buttons = ttk.Frame(root, padding="5")
        self.frame_buttons.pack()

    # === FONCTION PRINCIPALE DE PRÉDICTION ===
    def run_prediction(self):
        team1 = self.team1_var.get()
        team2 = self.team2_var.get()

        if not team1 or not team2:
            messagebox.showwarning("Erreur", "Veuillez choisir deux équipes.")
            return

        df1 = load_and_preprocess(os.path.join(DATA_FOLDER, f"{team1}.csv"))
        df2 = load_and_preprocess(os.path.join(DATA_FOLDER, f"{team2}.csv"))

        model1, scaler1, acc1 = train_svm_model(df1)
        model2, scaler2, acc2 = train_svm_model(df2)

        # Données du 6e match comme entrée (attention à la logique ici si on veut les 5 derniers matchs !)
        last5_avg1 = df1[["buts marqués", "buts encaissés", "DDB"]].iloc[5]
        last5_avg2 = df2[["buts marqués", "buts encaissés", "DDB"]].iloc[5]

        input1 = scaler1.transform([last5_avg1])
        input2 = scaler2.transform([last5_avg2])

        pred1 = model1.predict(input1)[0]
        pred2 = model2.predict(input2)[0]

        result_map = {-1: "Défaite", 0: "Nul", 1: "Victoire"}

        # Nettoyage des anciens résultats
        for widget in self.frame_results.winfo_children():
            widget.destroy()
        for widget in self.frame_buttons.winfo_children():
            widget.destroy()

        # Affichage des résultats
        ttk.Label(self.frame_results, text="🔮 Résultats de Prédiction", font=("Segoe UI", 13, "bold")).pack(pady=5)
        ttk.Label(self.frame_results, text=f"{team1} : {result_map[pred1]} (Précision : {acc1*100:.2f}%)").pack()
        ttk.Label(self.frame_results, text=f"{team2} : {result_map[pred2]} (Précision : {acc2*100:.2f}%)").pack()

        # Estimation du score probable (approche moyenne + différentielle)
        mean_goals1 = df1["buts marqués"].mean()
        mean_conceded2 = df2["buts encaissés"].mean()
        est_score1 = int(round((mean_goals1 + (mean_goals1 - mean_conceded2)) / 2))

        mean_goals2 = df2["buts marqués"].mean()
        mean_conceded1 = df1["buts encaissés"].mean()
        est_score2 = int(round((mean_goals2 + (mean_goals2 - mean_conceded1)) / 2))

        est_score1 = max(0, est_score1)
        est_score2 = max(0, est_score2)

        ttk.Label(self.frame_results, text=f"⚽ Score estimé : {team1} {est_score1} - {est_score2} {team2}", font=("Segoe UI", 12, "bold")).pack(pady=5)

        # Boutons graphiques et stats
        ttk.Button(self.frame_buttons, text=f"📈 Régression {team1}", command=lambda: plot_linear_regression(df1, team1)).pack(side="left", padx=10)
        ttk.Button(self.frame_buttons, text=f"📈 Régression {team2}", command=lambda: plot_linear_regression(df2, team2)).pack(side="left", padx=10)
        ttk.Button(self.frame_buttons, text=f"📊 Stats {team1}", command=lambda: show_team_stats(df1, team1)).pack(side="left", padx=5)
        ttk.Button(self.frame_buttons, text=f"📊 Stats {team2}", command=lambda: show_team_stats(df2, team2)).pack(side="left", padx=5)
        ttk.Button(self.frame_buttons, text="❌ Quitter", command=self.root.quit).pack(side="right", padx=10)

# === POINT D’ENTRÉE DU PROGRAMME ===
if __name__ == "__main__":
    root = tk.Tk()
    set_style()
    root.configure(bg="#1e8de1")
    app = PredictionApp(root)
    root.mainloop()
