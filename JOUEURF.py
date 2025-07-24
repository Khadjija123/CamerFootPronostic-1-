# Importation des bibliothèques nécessaires
import tkinter as tk  # Interface graphique de base
from tkinter import ttk, messagebox  # Widgets avancés (comme Treeview) + boîte de dialogue
import mysql.connector  # Connexion à une base de données MySQL

# Définition de la classe principale de l'application
class StatsEquipeApp:
    def __init__(self, root):
        self.root = root
        self.root.title("📊 Statistiques des Équipes MTN Elite One")  # Titre de la fenêtre
        self.root.geometry("850x550")  # Dimensions de la fenêtre
        self.root.configure(bg="#e6f0ff")  # Couleur de fond

        # Connexion à la base de données MySQL locale
        self.conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="mtneliteone"
        )
        self.cursor = self.conn.cursor()  # Création du curseur de requête

        # Liste des noms des équipes
        self.teams = [
            "aigle_royal", "astres", "bamboutos", "bamenda",
            "canon_yaounde", "colombe", "coton_sport", "dynamo_douala",
            "fauve_azur_elite", "fortuna_mfou", "gazelle", "penthere",
            "stade_renard", "union_douala", "victoria_united", "yong_sport_academy"
        ]

        # Configuration du style général des widgets
        style = ttk.Style()
        style.theme_use('clam')
        style.configure("TLabel", background="#e6f0ff", font=("Helvetica", 12))
        style.configure("Title.TLabel", font=("Helvetica", 20, "bold"), background="#e6f0ff", foreground="#004080")
        style.configure("TButton", background="#3366cc", foreground="white", font=("Helvetica", 11, "bold"), padding=6)
        style.map("TButton", background=[('active', '#254a99')])
        style.configure("Treeview", background="white", foreground="black", rowheight=25, font=("Helvetica", 11))
        style.configure("Treeview.Heading", font=("Helvetica", 12, "bold"), background="#004080", foreground="white")
        style.map("Treeview", background=[('selected', '#3399ff')], foreground=[('selected', 'white')])

        # Création du titre principal
        title_label = ttk.Label(self.root, text="Statistiques des Joueurs", style="Title.TLabel")
        title_label.pack(pady=15)

        # Frame pour les boutons de statistiques générales
        button_frame = tk.LabelFrame(self.root, text="Statitique generale", font=("Helvetica", 12, "bold"),
                                     padx=15, pady=10, bg="#e6f0ff", fg="#004080")
        button_frame.pack(pady=15)
        
        # Boutons pour les top buteurs, passeurs, et meilleurs joueurs
        ttk.Button(button_frame, text="Top 10 Buteurs", command=self.afficher_top_buteurs).pack(side=tk.LEFT, padx=10)
        ttk.Button(button_frame, text="Top 5 Passeurs", command=self.afficher_top_passeurs).pack(side=tk.LEFT, padx=10)
        ttk.Button(button_frame, text="Top 10 Meilleurs Joueurs", command=self.afficher_top10_meilleurs_joueurs).pack(side=tk.LEFT, padx=10)

        # Deuxième frame pour les statistiques individuelles par équipe
        button_frame = tk.LabelFrame(self.root, text="Statistique individuelles par equipe", font=("Helvetica", 12, "bold"),
                                     padx=255, pady=10, bg="#e6f0ff", fg="#004080")
        button_frame.pack(pady=15)

        # Création du sélecteur d'équipe (combobox)
        top_frame = tk.Frame(self.root, bg="#e6f0ff")
        top_frame.pack(pady=10)
        ttk.Label(top_frame, text="Sélectionnez une équipe :").pack(side=tk.LEFT, padx=5)
        self.team_selector = ttk.Combobox(top_frame, values=self.teams, state="readonly", width=35, font=("Helvetica", 11))
        self.team_selector.pack(side=tk.LEFT, padx=5)
        self.team_selector.set("Sélectionnez une équipe")

        # Boutons liés à l'équipe sélectionnée : buteurs et passeurs
        ttk.Button(button_frame, text="Voir Buteurs", command=self.afficher_buteurs).pack(side=tk.LEFT, padx=10)
        ttk.Button(button_frame, text="Voir Passeurs", command=self.afficher_passeurs).pack(side=tk.LEFT, padx=10)

        # Frame contenant le tableau de résultats (Treeview)
        table_frame = tk.Frame(self.root)
        table_frame.pack(fill=tk.BOTH, expand=True, padx=20, pady=15)

        # Configuration du tableau
        columns = ("Nom", "Dossard", "Statistiques")
        self.tree = ttk.Treeview(table_frame, columns=columns, show="headings", selectmode="browse")
        for col in columns:
            self.tree.heading(col, text=col)
            width = 350 if col == "Nom" else 120
            self.tree.column(col, width=width, anchor="center")

        # Ajout d'une barre de défilement verticale au tableau
        scrollbar = ttk.Scrollbar(table_frame, orient=tk.VERTICAL, command=self.tree.yview)
        self.tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        self.tree.pack(fill=tk.BOTH, expand=True)

    # Méthode pour vider le tableau
    def clear_tree(self):
        for item in self.tree.get_children():
            self.tree.delete(item)

    # Affiche les buteurs d'une équipe sélectionnée
    def afficher_buteurs(self):
        team = self.team_selector.get()
        if not team or team == "Sélectionnez une équipe":
            messagebox.showwarning("Sélection requise", "Veuillez sélectionner une équipe.")
            return
        try:
            self.clear_tree()
            query = f"""
                SELECT j.nom, j.dorsard, COUNT(*) AS total_buts
                FROM joueur j JOIN `{team}` t
                ON j.dorsard IN (
                    t.dorsat_Buteur_but1, t.dorsat_Buteur_but2,
                    t.dorsat_Buteur_but3, t.dorsat_Buteur_but4
                )
                WHERE j.equipe = '{team}'
                GROUP BY j.nom, j.dorsard
                HAVING total_buts > 0
                ORDER BY total_buts DESC
            """
            self.cursor.execute(query)
            for row in self.cursor.fetchall():
                self.tree.insert("", tk.END, values=(row[0], row[1], f"{row[2]} 🥅"))
        except Exception as e:
            messagebox.showerror("Erreur", str(e))

    # Affiche les passeurs d'une équipe sélectionnée
    def afficher_passeurs(self):
        team = self.team_selector.get()
        if not team or team == "Sélectionnez une équipe":
            messagebox.showwarning("Sélection requise", "Veuillez sélectionner une équipe.")
            return
        try:
            self.clear_tree()
            query = f"""
                SELECT j.nom, j.dorsard, COUNT(*) AS nb_passes
                FROM joueur j JOIN `{team}` t
                ON j.dorsard IN (
                    t.dorsat_passeur_but1, t.dorsat_passeur_but2,
                    t.dorsat_passeur_but3, t.dorsat_passeur_but4
                )
                WHERE j.equipe = '{team}'
                GROUP BY j.nom, j.dorsard
                HAVING nb_passes > 0
                ORDER BY nb_passes DESC
            """
            self.cursor.execute(query)
            for row in self.cursor.fetchall():
                self.tree.insert("", tk.END, values=(row[0], row[1], f"{row[2]} 🎯"))
        except Exception as e:
            messagebox.showerror("Erreur", str(e))

    # Affiche les 10 meilleurs buteurs du championnat (toutes équipes confondues)
    def afficher_top_buteurs(self):
        try:
            self.clear_tree()
            union_queries = []
            for team in self.teams:
                q = f"""
                    SELECT j.nom, j.dorsard, '{team}' AS equipe,
                    (SELECT COUNT(*) FROM `{team}` t
                     WHERE j.dorsard IN (
                        t.dorsat_Buteur_but1, t.dorsat_Buteur_but2,
                        t.dorsat_Buteur_but3, t.dorsat_Buteur_but4
                     )) AS total_buts
                    FROM joueur j WHERE j.equipe = '{team}'
                """
                union_queries.append(q)
            final_query = f"""
                SELECT nom, dorsard, equipe, SUM(total_buts) AS total_buts
                FROM ({' UNION ALL '.join(union_queries)}) all_buteurs
                GROUP BY nom, dorsard, equipe
                HAVING total_buts > 0
                ORDER BY total_buts DESC
                LIMIT 10
            """
            self.cursor.execute(final_query)
            for row in self.cursor.fetchall():
                self.tree.insert("", tk.END, values=(f"{row[0]} ({row[2]})", row[1], f"{row[3]} 🥅"))
        except Exception as e:
            messagebox.showerror("Erreur", str(e))

    # Affiche les 5 meilleurs passeurs du championnat
    def afficher_top_passeurs(self):
        try:
            self.clear_tree()
            union_queries = []
            for team in self.teams:
                q = f"""
                    SELECT j.nom, j.dorsard, '{team}' AS equipe,
                    (SELECT COUNT(*) FROM `{team}` t
                     WHERE j.dorsard IN (
                        t.dorsat_passeur_but1, t.dorsat_passeur_but2,
                        t.dorsat_passeur_but3, t.dorsat_passeur_but4
                     )) AS total_passes
                    FROM joueur j WHERE j.equipe = '{team}'
                """
                union_queries.append(q)
            final_query = f"""
                SELECT nom, dorsard, equipe, SUM(total_passes) AS total_passes
                FROM ({' UNION ALL '.join(union_queries)}) all_passeurs
                GROUP BY nom, dorsard, equipe
                HAVING total_passes > 0
                ORDER BY total_passes DESC
                LIMIT 5
            """
            self.cursor.execute(final_query)
            for row in self.cursor.fetchall():
                self.tree.insert("", tk.END, values=(f"{row[0]} ({row[2]})", row[1], f"{row[3]} 🎯"))
        except Exception as e:
            messagebox.showerror("Erreur", str(e))

    # Affiche les 10 meilleurs joueurs (buts + passes)
    def afficher_top10_meilleurs_joueurs(self):
        try:
            self.clear_tree()
            union_queries = []
            for team in self.teams:
                q = f"""
                    SELECT j.nom, j.dorsard, '{team}' AS equipe,
                        (SELECT COUNT(*) FROM `{team}` t WHERE j.dorsard IN (
                            t.dorsat_Buteur_but1, t.dorsat_Buteur_but2,
                            t.dorsat_Buteur_but3, t.dorsat_Buteur_but4)) AS buts,
                        (SELECT COUNT(*) FROM `{team}` t WHERE j.dorsard IN (
                            t.dorsat_passeur_but1, t.dorsat_passeur_but2,
                            t.dorsat_passeur_but3, t.dorsat_passeur_but4)) AS passes
                    FROM joueur j
                    WHERE j.equipe = '{team}'
                """
                union_queries.append(q)

            final_query = f"""
                SELECT nom, dorsard, equipe, SUM(buts) AS buts, SUM(passes) AS passes
                FROM ({' UNION ALL '.join(union_queries)}) AS stats
                WHERE buts > 0 OR passes > 0
                GROUP BY nom, dorsard, equipe
                ORDER BY buts DESC, passes DESC
                LIMIT 10
            """
            self.cursor.execute(final_query)
            for row in self.cursor.fetchall():
                nom_affiche = f"{row[0]} ({row[2]})"
                stats = f"{row[3]} 🥅 / {row[4]} 🎯"
                self.tree.insert("", tk.END, values=(nom_affiche, row[1], stats))
        except Exception as e:
            messagebox.showerror("Erreur", str(e))

    # Nettoie le tableau (doublon de la méthode plus haut)
    def clear_tree(self):
        for item in self.tree.get_children():
            self.tree.delete(item)

# Lancement de l'application
if __name__ == '__main__':
    root = tk.Tk()
    app = StatsEquipeApp(root)
    root.mainloop()
