DROP DATABASE IF EXISTS players;
CREATE DATABASE IF NOT EXISTS players;

USE players;

CREATE TABLE players (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
race INT UNSIGNED,
PRIMARY KEY(id),
FOREIGN KEY (race) REFERENCES race(id)
)

