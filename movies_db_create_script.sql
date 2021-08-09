CREATE DATABASE IF NOT EXISTS movie_db;

DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS movies
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    title    VARCHAR(75)  NOT NULL,
    rating   CHAR(1),
    actors   TEXT         NOT NULL,
    director VARCHAR(255)  NOT NULL,
    genre    VARCHAR(255) NOT NULL,
    plot     TEXT         NOT NULL,
    poster   TEXT,
    year     VARCHAR(4)          NOT NULL
);