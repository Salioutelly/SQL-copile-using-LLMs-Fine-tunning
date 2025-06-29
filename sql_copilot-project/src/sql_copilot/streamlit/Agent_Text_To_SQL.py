# Agent_Text_To_SQL.py
import os
import json
import pandas as pd
import streamlit as st
from __init__ import get_conn_and_cursor, execute_query, generate_predictions_from_user_request

# Chemins
base_path = r"C:\Users\ksimotabudjifupa\Documents\Personnel\Data_science_projects\sql_copilot"
db_path = os.path.join(base_path, "database", "crm.db")

# Connexion à la base
st.header("***STRUCTURE DE LA BASE DE DONNEES***")
conn, cursor = get_conn_and_cursor(db_file=db_path)

# Récupération des tables
get_tables_query = "SELECT name FROM sqlite_master WHERE type='table';"
execute_query(cursor, get_tables_query)
tables = cursor.fetchall()
table_names = [table[0] for table in tables]

# Affichage des tables
st.write("**Tables actuelles de la base de données CRM**")
for table in table_names:
    st.write(f"📌 **{table}**")

# Visualisation
st.subheader("Visualisation tables CRM", divider=True)
st.write("Veuillez sélectionner la table dont vous souhaitez visualiser le contenu (10 premières lignes)")

table_selected = st.selectbox("Tables à sélectionner", table_names)
df_table_10 = pd.read_sql_query(f"SELECT * FROM {table_selected} LIMIT 10;", conn)
st.dataframe(df_table_10, hide_index=True)

# Interaction utilisateur / modèle
st.subheader("Interrogation du modèle Text To SQL", divider=True)

with st.container(border=True):
    st.write("Veuillez saisir votre requête et ensuite la valider")
    nl_user_request = st.text_area("Requête Utilisateur", placeholder="Ex : Lister les clients ayant passé une commande en 2023")

    if st.button("Valider Question"):
        try:
            ai_sql_query = generate_predictions_from_user_request(
                nl_user_request,
                table_names,
                st.session_state.tokenizer,
                st.session_state.trainable_model
            )
            st.session_state.generated_sql = ai_sql_query
        except Exception as e:
            st.error(f"Erreur lors de la génération de la requête SQL : {e}")
            st.session_state.generated_sql = ""

# Requête SQL modifiable par l'utilisateur
sql_to_execute = st.text_area(
    "Requête SQL à exécuter (modifiable)", 
    value=st.session_state.get("generated_sql", ""), 
    height=100
)

# Exécution SQL
if st.button("Exécuter la requête"):
    if not sql_to_execute.strip():
        st.warning("Aucune requête SQL à exécuter.")
    else:
        try:
            df_result = pd.read_sql_query(sql_to_execute, conn)
            st.success("Requête exécutée avec succès ✅")
            st.dataframe(df_result)
        except Exception as e:
            st.error("Requête non exécutée ❌")
            st.error(f"Erreur : {e}")