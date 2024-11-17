
from dotenv import load_dotenv
import streamlit as st
from time import sleep
from tools import get_data
load_dotenv()


@st.dialog("Error occur, please try it later")
def alert():
    st.write("connection is failed")
    st.stop()

    with st.spinner('downloading...'):
        get_data()
alert()
st.write("Show Page")


