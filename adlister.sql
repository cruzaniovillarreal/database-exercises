DROP DATABASE IF EXISTS adlister;
CREATE DATABASE IF NOT EXISTS adlister;
USE adlister;

CREATE TABLE users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
user_email VARCHAR(45) NOT NULL,
user_password VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE ads(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
description VARCHAR(255) NOT NULL,
users_id INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(users_id) REFERENCES users(id)
);

CREATE TABLE category(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
type VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE ads_category(
ads_category_ads_id INT UNSIGNED NOT NULL,
ads_category_category_id INT UNSIGNED NOT NULL,
FOREIGN KEY(ads_category_ads_id) REFERENCES ads(id),
FOREIGN KEY(ads_category_category_id) REFERENCES category(id)
);


# use adlister;
#
# Select user_email
# from users as u
#          join ads a on u.id = a.users_id
# where a.id = #GivenAdId;
#
# Select c.type
# from ads_category as ac
#          join category c on ac.ads_category_category_id = c.id
# where ads_category_ads_id = #GivenAdId;
#
# Select *
# from ads as a
#          join ads_category ac on a.id = ac.ads_category_ads_id
#          join category c on ac.ads_category_category_id = c.id
# where c.id = #GivenCategory;
#
# Select *
# from ads as a
# where users_id = #GivenUserID;




