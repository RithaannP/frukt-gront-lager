INSERT INTO vare (navn, kategori, innholdPerKasse, innholdsenhet)
VALUES
    ('Banan', 'Frukt', 18, 'kg'),
    ('Vannmelon', 'Frukt', 20, 'kg'),
    ('Avokado løs', 'Frukt', 8, 'stk'),
    ('Honningmelon', 'Frukt', 9, 'kg');


INSERT INTO pall (vareId, antallKasser, innkjopsprisPerKasse, mottattDato, utlopsDato, opprinnelsesland)
VALUES
    (1, 30, 210, '2026-10-02', '2026-10-12', 'Ecuador'),
    (1, 30, 215, '2026-10-06', '2026-10-16', 'Colombia'),
    (2, 40, 180, '2026-10-03', '2026-10-17', 'Tyrkia'),
    (3, 80, 95,  '2026-10-05', '2026-10-11', 'Peru'),
    (4, 40, 160, '2026-10-04', '2026-10-15', 'Costa Rica');