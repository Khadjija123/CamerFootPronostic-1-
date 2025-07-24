import tkinter as tk
from tkinter import messagebox
import subprocess
import os

# Chemin vers le dossier contenant les scripts
SCRIPT_PATH = r"C:\Users\natha\Desktop\sout projet\Prediction"

class MTNEliteOneApp:
    def __init__(self, root):
        self.root = root
        self.root.title("MTN ELITE ONE")
        self.root.geometry("500x400")
        self.root.configure(bg="#2168d2")

        # Titre principal
        tk.Label(root, text="MTN ELITE ONE", font=("Helvetica", 20, "bold"), bg="#e6f0ff").pack(pady=30)

        # Boutons principaux
        btn_analyse = tk.Button(root, text="ANALYSE", font=("Helvetica", 16), width=20, height=2, command=self.show_analyse_options, bg="#4da6ff")
        btn_analyse.pack(pady=10)

        btn_prediction = tk.Button(root, text="PREDICTION", font=("Helvetica", 16), width=20, height=2, command=self.run_prediction, bg="#85e085")
        btn_prediction.pack(pady=10)

    def show_analyse_options(self):
        analyse_window = tk.Toplevel(self.root)
        analyse_window.title("Analyse des Statistiques")
        analyse_window.geometry("400x300")
        analyse_window.configure(bg="#ffffe6")

        tk.Label(analyse_window, text="Analyse des Statistiques", font=("Helvetica", 16, "bold"), bg="#ffffe6").pack(pady=20)

        btn_stat_equipes = tk.Button(analyse_window, text="Statistiques des Équipes", font=("Helvetica", 14), width=25, command=self.run_stat_equipes)
        btn_stat_equipes.pack(pady=10)

        btn_stat_joueurs = tk.Button(analyse_window, text="Statistiques des Joueurs", font=("Helvetica", 14), width=25, command=self.run_stat_joueurs)
        btn_stat_joueurs.pack(pady=10)

    def run_stat_equipes(self):
        try:
            subprocess.Popen(["python", os.path.join(SCRIPT_PATH, "STATSF.py")])
        except Exception as e:
            messagebox.showerror("Erreur", f"Impossible de lancer STATSF.py\n{e}")

    def run_stat_joueurs(self):
        try:
            subprocess.Popen(["python", os.path.join(SCRIPT_PATH, "JOUEURF.py")])
        except Exception as e:
            messagebox.showerror("Erreur", f"Impossible de lancer JOUEURF.py\n{e}")

    def run_prediction(self):
        try:
            subprocess.Popen(["python", os.path.join(SCRIPT_PATH, "MLTF.py")])
        except Exception as e:
            messagebox.showerror("Erreur", f"Impossible de lancer MLTF.py\n{e}")

if __name__ == "__main__":
    root = tk.Tk()
    app = MTNEliteOneApp(root)
    root.mainloop()
