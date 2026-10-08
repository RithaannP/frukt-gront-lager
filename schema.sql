DROP TABLE IF EXISTS pall;
DROP TABLE IF EXISTS vare;
DROP TABLE IF EXISTS butikk;

CREATE TABLE vare (
    id INTEGER,
    navn TEXT NOT NULL UNIQUE,
    kategori TEXT,
    innholdPerKasse FLOAT,
    innholdsenhet TEXT NOT NULL CHECK (innholdsenhet IN ('kg', 'stk', 'liter')),
    PRIMARY KEY(id)
);


CREATE TABLE pall (
    id INTEGER,
    vareId INTEGER NOT NULL,
    antallKasser INTEGER NOT NULL,
    innkjopsprisPerKasse FLOAT,
    mottattDato TEXT,
    utlopsDato TEXT,
    opprinnelsesland TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY(vareId) REFERENCES vare
);

CREATE TABLE butikk (
    id INTEGER,
    navn TEXT NOT NULL UNIQUE,
    PRIMARY KEY(id)
);