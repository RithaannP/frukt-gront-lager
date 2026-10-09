DROP TABLE IF EXISTS svinn;
DROP TABLE IF EXISTS ordrelinje;
DROP TABLE IF EXISTS ordre;
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


CREATE TABLE ordre (
    id INTEGER,
    butikkId INTEGER NOT NULL,
    leveringsdato TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (butikkId) REFERENCES butikk
);

CREATE TABLE ordrelinje (
    id INTEGER,
    ordreId INTEGER NOT NULL,
    vareId INTEGER NOT NULL,
    antallKasser INTEGER NOT NULL CHECK (antallKasser > 0),
    prisPerKasse INTEGER NOT NULL CHECK (prisPerKasse >= 0),
    PRIMARY KEY(id),
    FOREIGN KEY(ordreId) REFERENCES ordre,
    FOREIGN KEY(vareId) REFERENCES vare
);

CREATE TABLE svinn (
    id INTEGER,
    pallId INTEGER NOT NULL,
    antallKasser INTEGER NOT NULL,
    dato TEXT NOT NULL,
    arsak TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (pallId) REFERENCES pall
);