USE codeup_test_db;
SELECT name FROM albums;
UPDATE albums SET sales = sales*10;
SELECT sales FROM albums;
SELECT release_date from albums WHERE release_date<1980;
UPDATE albums SET release_date = release_date-100 WHERE release_date<1980;
SELECT release_date FROM albums WHERE release_date<1980;
SELECT name FROM albums WHERE artist = ' Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';