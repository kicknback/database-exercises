USE codeup_test_db;

SELECT 'All albums in the table';
SELECT name AS 'Albums'
FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT 'CHANGED albums in the table';
SELECT name AS 'Albums'
FROM albums;


SELECT 'All albums released before 1980';
SELECT name AS 'Albums'
FROM albums
WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT 'CHANGED albums released before 1980';
SELECT name AS 'Albums'
FROM albums
WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson';
SELECT name AS 'Michael Jackson Albums'
FROM albums
WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'CHANGED albums by Michael Jackson';
SELECT name AS 'Michael Jackson Albums'
FROM albums
WHERE artist = 'Michael Jackson';