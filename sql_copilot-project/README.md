
# 🧠 Text To SQL – Génération de Requêtes SQL à partir du Langage Naturel

**Text To SQL** est un projet de NLP permettant la génération automatique de requêtes SQL à partir d’instructions en langage naturel, en utilisant un modèle de langage de grande taille (**LLM**) affiné via une méthode efficace et légère : **LoRA**.

---

## 📌 Objectif

Ce projet vise à :
- Permettre aux utilisateurs de formuler des requêtes SQL sans avoir besoin de connaître le langage SQL
- Exploiter un **LLM finement ajusté** pour comprendre le langage naturel et le convertir en instructions SQL valides
- Offrir une interface utilisateur simple et interactive via **Streamlit**

---

## 🧱 Structure du projet

```
📁 data/
│   ├── spider/           # Données du dataset Spider
│   ├── wikisql.csv       # Dataset WikiSQL
│
📁 notebooks/
│   ├── EDA.ipynb                         # Analyse exploratoire des jeux de données
│   ├── Preparation_data_and_model_selection.ipynb  # Sélection de Phi2 et configuration LoRA
│   ├── Model_evaluation.ipynb           # Résultats d'évaluation et visualisations
│
📁 database/
│   ├── gold/             # Bases SQL de référence pour évaluation
│   ├── dev/              # Bases SQL générées
│
📁 src/sql_copilot/streamlit/
│   ├── Text_To_SQL.py    # Application Streamlit
│   ├── Accueil.py        # Page d'accueil
│   └── Agent_Text_To_SQL.py  # Backend du modèle
│
📁 scripts/
│   ├── evaluation.py     # Script d’évaluation compatible Spider
│   └── process_sql.py    # Parsing et validation SQL
│
📄 requirements.txt
📄 README.md
```

---

## 🔬 Pipeline du projet

### 1. 🧪 Analyse exploratoire des données (EDA)

- Analyse des structures des jeux de données **Spider** et **WikiSQL**
- Préparation des schémas, des types de requêtes, et exploration de la complexité

### 2. 🤖 Sélection et fine-tuning du modèle

- Choix du modèle : **Phi-2 (Microsoft)**, petit LLM performant
- Technique d'adaptation : **LoRA (Low-Rank Adaptation)**, méthode légère de fine-tuning
- Entraînement sur Spider/WikiSQL en convertissant les entrées texte en SQL

### 3. 🧪 Évaluation du modèle

- Utilisation d’un script d’évaluation (adapté de Spider) : `evaluation.py`
- Mesures : exact match, execution accuracy, F1, etc.
- Bases `.sql` de test (`dev`, `gold`) utilisées pour valider la performance

### 4. 🖥️ Interface utilisateur avec Streamlit

- Interface développée dans `Text_To_SQL.py` (src/sql_copilot/streamlit/)
- Saisie d'une question utilisateur ➜ conversion en requête SQL via le modèle
- Exécution en direct sur une **base fictive de CRM** conçue pour l’expérience

---

## ▶️ Lancer l'application

### 1. Installer les dépendances

```bash
pip install -r requirements.txt
```

### 2. Lancer l'interface Streamlit

```bash
cd src/sql_copilot/streamlit
streamlit run Text_To_SQL.py
```

---

## ⚙️ Technologies utilisées

- **Langage** : Python
- **Modèle** : Phi-2 (Microsoft)
- **Fine-tuning** : LoRA (via `peft`)
- **Interface** : Streamlit
- **Évaluation** : Script Spider-compatible (`evaluation.py`)
- **Données** : Spider, WikiSQL, et une base CRM fictive

---

## 📚 Références

- [LoRA paper (Hu et al., 2021)](https://arxiv.org/abs/2106.09685)
- [Phi-2 by Microsoft](https://www.microsoft.com/en-us/research/blog/phi-2-the-surprising-power-of-small-language-models/)
- [Spider Dataset](https://yale-lily.github.io/spider)
- [WikiSQL Dataset](https://github.com/salesforce/WikiSQL)

---

## 📬 Contribuer

Les contributions sont les bienvenues ! Pour toute suggestion ou amélioration :
- Forkez le projet
- Proposez une PR
- Ou ouvrez une issue
