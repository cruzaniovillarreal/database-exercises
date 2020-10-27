USE codeup_test_db;
SELECT 'ALBUMS RELEASED BEFORE 1991' AS '';
DELETE FROM albums WHERE release_date < 1991;
SELECT 'ALBUMS WITH GENRE ''DISCO''' AS '';
DELETE FROM albums WHERE genre = 'disco';
SELECT  'ALBUMS BY THE BEATLES' AS '';
DELETE FROM albums WHERE artist = 'The Beatles';