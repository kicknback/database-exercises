USE codeup_test_db;

SELECT 'Albums released after 1991';
DELETE
FROM albums
WHERE release_date > 1991;

SELECT 'Albums with the genre "disco"';
DELETE
FROM albums
WHERE genre LIKE '%disco%';

SELECT 'Albums by "Various artists"';
DELETE
FROM albums
WHERE artist = 'Various artists';