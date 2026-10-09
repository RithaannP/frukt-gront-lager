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


print("\nSvinn:")

svinn = connect.execute("""
    SELECT vare.navn, svinn.antallKasser,svinn.arsak, svinn.antallKasser*pall.innkjopsprisPerKasse AS tap
    FROM svinn
    JOIN pall on svinn.pallId = pall.id
    JOIN vare on pall.vareId = vare.id
    ORDER by tap DESC
""").fetchall()

for rad in svinn:
    print(rad)
connect.close()