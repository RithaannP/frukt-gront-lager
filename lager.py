import sqlite3

connection = sqlite3.connect("lager.db")

rader = connection.execute("SELECT id, navn, kategori, innholdPerKasse, innholdsenhet FROM vare").fetchall()

for rad in rader:
    print(rad)

connection.close()