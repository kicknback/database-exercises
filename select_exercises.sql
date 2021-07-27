USE codeup_test_db;

SELECT 'Name of all Pink Floyd albums';
SELECT name AS 'Albums'
FROM albums
WHERE artist = 'pink floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date
FROM albums
WHERE name LIKE '%Sgt. Pepper%';

SELECT 'The genre for Nevermind';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s';
SELECT name AS 'Albums'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales';
SELECT name AS 'Albums', sales AS 'Sales'
FROM albums
WHERE sales < 20
ORDER BY sales DESC;

SELECT 'All the albums with a genre of "Rock"';
SELECT name AS 'Albums', genre AS 'Genre'
FROM albums
WHERE genre = 'Rock';
