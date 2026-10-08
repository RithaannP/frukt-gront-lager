# Datamodell

## Vare
Hva slags vare det er:
- id (PK)
- navn (UNIQUE, f.eks. Banan, Jordbær, AppelsinJuice)
- kategori (f.eks. Frukt, Grønnsaker, Bær, Juice)
- innholdPerKasse = (Tallet skrives her)
- innholdsenhet (kg, stk eller liter)

## Pall
En konkret levering av en vare.
- id (PK)
- vareId (FK til vare)
- antallKasser (hvor mange kasser pallen kommer med)
- innkjopsprisPerKasse
- mottatDato
- utløpsDato
- OpprinelseLand


## butikk
- id (PK)
- navn

## ordre
- ordreId (PK)
- butikkId (FK til butikk)
- leveringsdato

## ordrelinje
Én vare på en ordre, f.eks. "5 kasser banan".
- id (PK)
- ordreId (FK til ordre)
- vareId (FK til vare)
- antall_kasser
- prisPerKasse, salgsprisen til butikken, låst når ordren lages

## bruker
- id (PK)
- navn
- ansattDato
- 
## plukk
- plukkId (PK)
- brukerId (FK til bruker)
- ordrelinjeId (Fk til ordrelinje)
- pallId (fk til pall)
- antallKasser

## Pris
- vareId (FK)
- PrisPerKasse
- gyldigFra
- 

## Salg
- pallId
- vareId
- antall

## Svinn
Kasser som kastes.
- id (PK)
- pallId (FK til pall)
- antallKasser
- dato
- arsak, f.eks. råte, skadet, utgått