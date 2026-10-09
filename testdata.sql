INSERT INTO vare (navn, kategori, innholdPerKasse, innholdsenhet)
VALUES
    ('Agurk', 'Grønnsaker', 12, 'stk'),
    ('Tomat', 'Grønnsaker', 6, 'kg');

INSERT INTO pall (vareId, antallKasser, innkjopsprisPerKasse, mottattDato, utlopsDato, opprinnelsesland)
VALUES
    (1, 50, 120, '2026-10-07', '2026-10-17', 'Norge'),
    (2, 40, 90,  '2026-10-05', '2026-10-12', 'Spania'),
    (2, 40, 95,  '2026-10-08', '2026-10-15', 'Nederland');

INSERT INTO butikk (navn)
VALUES
    ('Rema 1000 Ammerud'),
    ('Rema 1000 Kalbakken');


INSERT INTO ordre (butikkId, leveringsdato)
VALUES
    (1, '2026-10-09'),
    (2, '2026-10-09');


INSERT INTO ordrelinje (ordreId, vareId, antallKasser, prisPerKasse)
VALUES
    (1,1,10,120*1.3),
    (1,2,5,150*1.3),
    (2,1,8,120*1.3),
    (2,2,3,150*1.3);

