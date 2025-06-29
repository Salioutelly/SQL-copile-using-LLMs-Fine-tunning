# __init__.py
import os
import sqlite3
import logging
import streamlit as st
import numpy as np
import pandas as pd
from transformers import AutoModelForCausalLM, AutoTokenizer, BitsAndBytesConfig
import torch
from peft import PeftModel

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger()

def banner_bottom():
    st.markdown(
        """
        <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #3399ff;
            color: white;
            text-align: center;
            padding: 0.1px;
            font-size: 14px;
        }
        </style>

        <div class="footer">
            Powered by <strong>Text To SQL 2025 (c)</strong>
        </div>
        """,
        unsafe_allow_html=True,
    )

device = "cuda" if torch.cuda.is_available() else "cpu"

def save_predictions_to_file(predictions, filename="./pred/dev_pred.sql"):
    with open(filename, "w") as f:
        for sql in predictions:
            f.write(sql.strip() + "\n")
    print(f"✅ Sauvegardé dans {filename}")


def generate_text(prompt, tokenizer, model, max_new_tokens=2048):
    encoding = tokenizer(prompt, return_tensors="pt")
    input_ids = encoding['input_ids'].to(device)
    attention_mask = encoding['attention_mask'].to(device)

    with torch.no_grad():
        output_ids = model.generate(input_ids, attention_mask=attention_mask, max_new_tokens=max_new_tokens, pad_token_id=tokenizer.eos_token_id, do_sample=False)

    generated_text = tokenizer.decode(output_ids[0], skip_special_tokens=True)
    return generated_text

def generate_predictions_from_user_request(user_request, tables_names, tokenizer, trainable_model):
    
    instruction = f"""You are a Text-to-SQL assistant. 
    Convert the following question into a valid SQL query. 
    Return only the SQL query and end it with a semicolon.
    Te tables of the database are : {tables_names}.
    Question: {user_request}
    Anwser:"""

    generated = generate_text(instruction, tokenizer, trainable_model)
    ai_sql_query = extract_sql(generated)
    return ai_sql_query

def extract_sql(text):
    # Support different possible answer labels
    for key in ["Answer:", "Anwser:", "SQL:"]:
        if key in text:
            # Get everything after the key (Answer/Anwser/SQL)
            answer_section = text.split(key, 1)[1]
            # Stop if there’s another Question coming
            answer_only = answer_section.split("Question:", 1)[0].strip()
            # Clean and filter lines
            lines = [line.strip() for line in answer_only.splitlines() if line.strip()]
            # Ignore lines that repeat instructions
            if not lines or all(any(x in line for x in ["Convert", "Return", "Question"]) for line in lines):
                return "[NO SQL GENERATED]"
            sql = "\n".join(lines)
            # Ensure semicolon at the end
            if not sql.endswith(";"):
                sql += ";"
            return sql
    return "[NO SQL GENERATED]"

def get_conn_and_cursor(db_file):
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    return conn, cursor

def check_database_connection(db_file):
    try:
        _,_ = get_conn_and_cursor(db_file)
        db_connection_status = "connectée"
    except OSError:
        db_connection_status = "non connectée"
    return db_connection_status

def execute_query(cursor, query):
    try:
        cursor.execute(query)
    except Exception as e:
        st.error("Requête non executée ❌")
        st.error(f"Erreur d'execution : {e}")