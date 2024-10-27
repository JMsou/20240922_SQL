import streamlit as st

import psycopg2
conn=psycopg2.connect(
    host='piRobert0301.local',
    database='mydatabase_a23',
    user='a23',
    password='raspberry',
    port='5432')

cur = conn.cursor()
cur.execute("SELECT * FROM stations;")
rows = cur.fetchall()
names = []
for a in rows:
    names.append(a[2])

option = st.selectbox(
    "請選擇您**最愛**的車站",
    names
)

st.write("# 您選擇的是:",f' {option}')