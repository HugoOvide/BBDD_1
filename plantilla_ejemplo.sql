\pset pager off

BEGIN;
\echo 'creando un esquema'
CREATE SCHEMA IF NOT EXISTS ddbb;

\echo 'creando la tabla peliculas'
CREATE TABLE IF NOT EXISTS ddbb.peliculas(
     año           TEXT 
    ,titulo        TEXT 
    ,generos       TEXT
    ,puntuacion    TEXT
    ,duracion      TEXT
    ,idioma        TEXT
    ,calificacion  TEXT
);
\quit

\echo 'Cargando datos'
\COPY ddbb.peliculas    FROM peliculas.csv WITH (FORMAT csv, HEADER, DELIMITER E',', NULL 'NULL', ENCODING 'UTF-8');

\echo "Mostrar cuantas peliculas hay" 
SELECT
    count(*) as Número_de_peliculas
    FROM ddbb.peliculas                                                            -- from peliculas
    ;
\echo "Mostrar las peliculas en idioma español" 
SELECT
    *
    FROM ddbb.peliculas                                                            -- from peliculas
    WHERE peliculas.idioma='es' 
;
ROLLBACK;                       -- importante! permite correr el script multiples veces...p