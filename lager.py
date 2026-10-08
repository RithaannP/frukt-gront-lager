import sqlite3

connect = sqlite3.connect("lager.db")

rader = connect.execute("""
    SELECT pall.id, vare.navn, pall.antallKasser, pall.utlopsDato, pall.antallKasser * pall.innkjopsprisPerKasse AS verdi 
    FROM pall
    JOIN vare ON pall.vareId = vare.id
    ORDER BY pall.utlopsDato
""").fetchall()

for rad in rader:
    print(rad)

total = connect.execute("""
    SELECT SUM(antallKasser * innkjopsprisPerKasse)
    FROM pall
""").fetchone()[0]

print(f"Total lagerverdi: {total} kr")

connect.close()