# Importation des bibliothèques nécessaires
import tkinter as tk  # Pour l'interface graphique de base
from tkinter import ttk, messagebox  # Pour widgets modernes et boîtes de dialogue
import mysql.connector  # Pour la connexion à la base de données MySQL
import matplotlib.pyplot as plt  # Pour la génération de graphiques

# Classe principale de l'application de classement
class ClassementApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Classement MTN Elite One")  # Titre de la fenêtre
        self.root.geometry("850x600")  # Taille de la fenêtre
        self.root.configure(bg="#54a4f5")  # Couleur de fond

        # Style personnalisé pour les widgets ttk
        style = ttk.Style(self.root)
        style.theme_use('clam')

        # Style pour le menu déroulant (Combobox)
        style.configure("TCombobox",
                        fieldbackground="white",
                        background="#dde4f0",
                        padding=5,
                        font=('Helvetica', 11))

        # Style pour le tableau Treeview
        style.configure("Treeview",
                        background="white",
                        foreground="black",
                        rowheight=28,
                        fieldbackground="white",
                        font=('Helvetica', 10))
        style.map('Treeview', background=[('selected', '#3399ff')])

        # Style pour les boutons
        style.configure("TButton",
                        background="#4a90e2",
                        foreground="white",
                        font=('Helvetica', 11, 'bold'),
                        padding=7)
        style.map("TButton",
                  background=[('active', '#357ABD')])

        # Connexion à la base de données MySQL
        self.conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="mtneliteone"
        )
        self.cursor = self.conn.cursor()

        # Liste des équipes de la MTN Elite One
        self.teams = [
            "aigle_royal", "astres", "bamboutos", "bamenda",
            "canon_yaounde", "colombe", "coton_sport", "dynamo_douala",
            "fauve_azur_elite", "fortuna_mfou", "gazelle", "penthere",
            "stade_renard", "union_douala", "victoria_united", "yong_sport_academy"
        ]

        # Titre principal de l'application
        title = tk.Label(self.root, text="Classement MTN Elite One", font=("Helvetica", 18, "bold"), bg="#f0f4f8", fg="#333")
        title.pack(pady=15)

        # Sélecteur d'équipe (menu déroulant)
        self.team_selector = ttk.Combobox(self.root, values=self.teams, state="readonly", width=30)
        self.team_selector.pack(pady=10)
        self.team_selector.set("Sélectionnez une équipe")

        # Frame contenant les deux boutons (classement et graphique)
        btn_frame = tk.Frame(self.root, bg="#f0f4f8")
        btn_frame.pack(pady=10)

        # Bouton pour afficher le classement général
        btn_classement = ttk.Button(btn_frame, text="Afficher Classement", command=self.show_global_classement)
        btn_classement.grid(row=0, column=0, padx=10)

        # Bouton pour afficher l'analyse graphique
        btn_graphique = ttk.Button(btn_frame, text="Analyse Graphique", command=self.show_graph)
        btn_graphique.grid(row=0, column=1, padx=10)

        # Frame contenant le tableau (Treeview) avec une barre de défilement
        tree_frame = tk.Frame(self.root)
        tree_frame.pack(fill=tk.BOTH, expand=True, padx=20, pady=10)

        # Définition des colonnes du tableau
        columns = ("Position", "Équipe", "Pts", "MJ", "BM", "BE", "Diff")
        self.tree = ttk.Treeview(tree_frame, columns=columns, show='headings', selectmode='browse')
        for col in columns:
            self.tree.heading(col, text=col)
            # Ajustement de la largeur des colonnes
            if col == "Équipe":
                self.tree.column(col, width=180, anchor=tk.W)
            else:
                self.tree.column(col, width=70, anchor=tk.CENTER)

        # Barre de défilement verticale pour le tableau
        scrollbar = ttk.Scrollbar(tree_frame, orient=tk.VERTICAL, command=self.tree.yview)
        self.tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        self.tree.pack(fill=tk.BOTH, expand=True)

        # Définition des styles colorés pour les lignes
        self.tree.tag_configure('top3', background='#d4edda')         # Vert clair pour les 3 premiers
        self.tree.tag_configure('bottom3', background='#f8d7da')      # Rouge clair pour les 3 derniers
        self.tree.tag_configure('selected_team', background='#cce5ff')  # Bleu clair pour l'équipe sélectionnée

    # Récupère les données de classement général depuis la base
    def get_global_classement(self):
        classement = []

        for team in self.teams:
            try:
                query = f"""
                    SELECT 
                        '{team}' AS equipe,
                        SUM(points_acquis) AS points,
                        SUM(buts_marques) AS buts_marques,
                        SUM(buts_encaisses) AS buts_encaisses,
                        SUM(buts_marques) - SUM(buts_encaisses) AS diff_buts,
                        COUNT(*) AS matchs_joues
                    FROM `{team}`
                """
                self.cursor.execute(query)
                result = self.cursor.fetchone()

                if result:
                    classement.append({
                        'equipe': result[0],
                        'points': result[1] or 0,
                        'buts_marques': result[2] or 0,
                        'buts_encaisses': result[3] or 0,
                        'diff_buts': result[4] or 0,
                        'matchs_joues': result[5] or 0
                    })
            except Exception as e:
                print(f"Erreur pour l'équipe {team} :", e)

        # Tri des équipes par points (et différence de buts en cas d'égalité)
        classement.sort(key=lambda x: (x['points'], x['diff_buts']), reverse=True)

        # Ajout du rang (position) dans la liste
        for idx, team_data in enumerate(classement, start=1):
            team_data['position'] = idx

        return classement

    # Affiche le tableau du classement général
    def show_global_classement(self):
        self.tree.delete(*self.tree.get_children())  # Nettoyage du tableau
        classement = self.get_global_classement()
        selected_team = self.team_selector.get()  # Équipe sélectionnée

        for team in classement:
            tags = ()

            if team['position'] <= 3:
                tags += ('top3',)  # Top 3 en vert
            elif team['position'] > len(classement) - 3:
                tags += ('bottom3',)  # Derniers en rouge

            if team['equipe'] == selected_team:
                tags += ('selected_team',)  # Équipe sélectionnée en bleu

            # Insertion des données dans le tableau
            self.tree.insert('', tk.END, values=(
                team['position'],
                team['equipe'],
                team['points'],
                team['matchs_joues'],
                team['buts_marques'],
                team['buts_encaisses'],
                team['diff_buts']
            ), tags=tags)

    # Affiche un graphique de l'évolution des points et du classement d'une équipe
    def show_graph(self):
        team = self.team_selector.get()
        if not team or team not in self.teams:
            messagebox.showwarning("Sélection requise", "Veuillez sélectionner une équipe valide")
            return

        # Requête SQL pour récupérer les performances par journée
        query = f"""
            SELECT journee, points_acquis, position
            FROM `{team}`
            ORDER BY journee
        """
        self.cursor.execute(query)
        data = self.cursor.fetchall()

        if not data:
            messagebox.showinfo("Aucune donnée", f"Aucune donnée trouvée pour {team}")
            return

        # Extraction des valeurs pour le graphique
        journees = [row[0] for row in data]
        points_raw = [row[1] for row in data]
        position = [row[2] for row in data]

        # Calcul des points cumulés à chaque journée
        points_cumules = []
        total_points = 0
        for pts in points_raw:
            total_points += pts
            points_cumules.append(total_points)

        # Création du graphique
        plt.figure(figsize=(8, 5))
        plt.plot(journees, points_cumules, marker='o', linestyle='-', color='blue', label="Points cumulés")
        plt.plot(journees, position, marker='s', linestyle='-', color='red', label="Position au classement")

        # Ajustements de l'affichage
        plt.xticks(range(1, max(journees) + 1))
        plt.yticks(range(1, 51, 2))
        plt.xlabel("Journées")
        plt.ylabel("Valeurs")
        plt.title(f"Évolution des points et classement de {team}")
        plt.legend()
        plt.grid(True)

        plt.show()  # Affichage de la fenêtre du graphique

# Point d'entrée du programme
if __name__ == '__main__':
    root = tk.Tk()
    app = ClassementApp(root)
    root.mainloop()
