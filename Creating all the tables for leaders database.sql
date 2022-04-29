CREATE TABLE presidents (
  country                 VARCHAR (100)   PRIMARY KEY,
  continent               TEXT,
  president               TEXT
);

CREATE TABLE prime_ministers (
  country                  VARCHAR (100)   PRIMARY KEY,
  continent               TEXT,
  prime_minister          TEXT
);

CREATE TABLE states (
  name                     VARCHAR (100)   PRIMARY KEY,
  continent               TEXT,
  indep_year              INTEGER,
  fert_rate               REAL,
  women_parli_perc        REAL
  
);

CREATE TABLE monarchs (
  country                  VARCHAR (100)   PRIMARY KEY,
  continent               TEXT,
  monarch                 TEXT
);

-- Copy over data from CSVs
\copy presidents FROM 'data/leaders/presidents.csv' DELIMITER ',' CSV HEADER;
\copy prime_ministers FROM 'data/leaders/prime_ministers.csv' DELIMITER ',' CSV HEADER;
\copy states FROM 'data/leaders/states.csv' DELIMITER ',' CSV HEADER;
\copy monarchs FROM 'data/leaders/monarchs.csv' DELIMITER ',' CSV HEADER;

/*
createdb leaders
psql leaders < data/leaders/leaders.sql
*/