CREATE DATABASE if not exists quotables_db;

use quotables_db;

DROP TABLE IF EXISTS authors;

CREATE TABLE authors
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name)
VALUES ('Douglas', 'Adams'),
       ('Mark', 'Twain'),
       ('Kurt', 'Vonnegut');


SELECT *
FROM authors;


DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_id INT UNSIGNED NOT NULL,
    content   TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) references authors (id)
);

DESCRIBE quotes;