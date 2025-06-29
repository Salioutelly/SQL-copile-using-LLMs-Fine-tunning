# Accueil.py
from __init__ import *
import torch
import streamlit as st
from transformers import AutoModelForCausalLM, AutoTokenizer, BitsAndBytesConfig
from peft import PeftModel
import os

base_path = r"C:\Users\ksimotabudjifupa\Documents\Personnel\Data_science_projects\sql_copilot"

st.title("***Text To SQL 🤖***")

if "model_name" not in st.session_state:
    st.session_state.model_name = None
if "tokenizer" not in st.session_state:
    st.session_state.tokenizer = None
if "trainable_model" not in st.session_state:
    st.session_state.trainable_model = None

@st.cache_resource(show_spinner=True)
def llm():
    # Paths to model directories
    base_model_path = os.path.join(base_path, "models", "base_Phi2_model")
    peft_model_path = os.path.join(base_path, "models", "Text2SQL_Phi2_model")

    # Make sure paths exist
    if not os.path.isdir(base_model_path):
        raise FileNotFoundError(f"Base model path does not exist: {base_model_path}")
    if not os.path.isdir(peft_model_path):
        raise FileNotFoundError(f"PEFT model path does not exist: {peft_model_path}")

    # Quantization config
    bnb_config = BitsAndBytesConfig(
        load_in_4bit=True,
        bnb_4bit_use_double_quant=True,
        bnb_4bit_quant_type="nf4",
        bnb_4bit_compute_dtype=torch.bfloat16
    )

    # Load base model
    base_model = AutoModelForCausalLM.from_pretrained(
        base_model_path,
        quantization_config=bnb_config,
        trust_remote_code=False,
        device_map="auto"
    )

    # Load PEFT fine-tuned model
    trainable_model = PeftModel.from_pretrained(
        base_model,
        peft_model_path,
        is_trainable=False  # Set to False unless you are training
    )

    # Load tokenizer
    tokenizer = AutoTokenizer.from_pretrained(
        peft_model_path,
        trust_remote_code=True,
        use_fast=False
    )

    model_name = "Phi2 Text To SQL"
    return model_name, tokenizer, trainable_model

# UI Components
st.subheader(":blue[***Description du projet***]", divider="blue")

# Cache model loading in session state
st.session_state.model_name, st.session_state.tokenizer, st.session_state.trainable_model = llm()

# Project Description
with st.container():

    st.markdown(
        "🤖 **Text to SQL** est un projet d’intelligence artificielle (IA) permettant de générer et d’exécuter des requêtes SQL à partir d’instructions en langage naturel."
    )

    st.markdown("### 🔧 Étapes clés du développement :")

    st.markdown("1️⃣ **Constitution de la base d'entraînement** : utilisation des jeux de données *Spider* et *WikiSQL* ;")
    st.markdown("2️⃣ **Choix du modèle LLM** : sélection de *Phi-2* de Microsoft pour sa légèreté et ses performances ;")
    st.markdown("3️⃣ **Méthode de fine-tuning** : utilisation de *LoRA* (*Low-Rank Adaptation*) pour un affinement efficace ;")
    st.markdown("4️⃣ **Base de données fictive** : création de 6 tables pour l'interaction avec le modèle personnalisé.")



st.info(f"Le modèle de Text to SQL est : **{st.session_state.model_name}**")

db_path = os.path.join(base_path, "database", "crm.db")
db_connection_status = check_database_connection(db_file=db_path)
if db_connection_status == "non connectée":
    st.error("***Impossible de se connecter à la base de données***")
    st.toast("***Connexion base de données impossible***", icon="⛔")
else:
    st.toast("***Connexion base de données effectuée***", icon="📶")

banner_bottom()
