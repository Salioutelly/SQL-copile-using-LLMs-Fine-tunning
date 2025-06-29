# Smart_Speech_To_Text.py

import os

import streamlit as st

from __init__ import *

os.environ["KMP_DUPLICATE_LIB_OK"] = "TRUE"

st.set_page_config(page_title="Text To SQL", page_icon="🚀", layout="wide")

pages = {
    " ": [st.Page("Accueil.py", title="Accueil", icon="⚡")],
    "Agents": [
        st.Page(
            "Agent_Text_To_SQL.py",
            title="Agent Text To SQL",
            icon="🎯",
        )
    ],
}

pg = st.navigation(pages)
pg.run()