import sqlite3

connect = sqlite3.connect("lager.db")


bestillinger = connect.execute("""
    SELECT butikk.navn, ordre.leveringsdato, vare.navn, ordrelinje.antallKasser
    FROM ordrelinje
    JOIN ordre ON ordrelinje.ordreId = ordre.id
    JOIN butikk ON ordre.butikkId = butikk.id
    JOIN vare ON ordrelinje.vareId = vare.id
    ORDER BY butikk.navn, vare.navn
""").fetchall()

for rad in bestillinger:
    print(rad)
    
prisPerBestiling = connect.execute("""
   SELECT butikk.navn, SUM(ordrelinje.antallKasser * ordrelinje.prisPerKasse) AS pris
    FROM ordrelinje
    JOIN ordre ON ordrelinje.ordreId = ordre.id
    JOIN butikk ON ordre.butikkId = butikk.id
    GROUP BY butikk.navn
    """).fetchall()
for rad in prisPerBestiling:
    print(rad)
    
connect.close()