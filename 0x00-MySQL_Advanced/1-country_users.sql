-- A SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans
-- id, email, name, country(enumeration of US, CO and TN)
CREATE TABLE IF NOT EXISTS users(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255),
	country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
);