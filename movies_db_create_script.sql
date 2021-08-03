CREATE DATABASE IF NOT EXISTS movie_db;

DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS movies
(
    id       INT,
    title    VARCHAR(75)  NOT NULL,
    rating   INT,
    actors   TEXT         NOT NULL,
    director VARCHAR(50)  NOT NULL,
    genre    VARCHAR(255) NOT NULL,
    plot     TEXT         NOT NULL,
    poster   TEXT,
    year     INT          NOT NULL
);