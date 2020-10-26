USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(20) NOT NULL DEFAULT 'Unknown',
    name VARCHAR(20) NOT NULL DEFAULT 'Unknown',
    release_date VARCHAR(4),
    sales DECIMAL(9,2),
    genre VARCHAR(20),
    PRIMARY KEY(id)
);