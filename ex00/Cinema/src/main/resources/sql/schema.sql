CREATE TABLE IF NOT EXISTS films(
    id IDENTITY NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date VARCHAR(255) NOT NULL,
    age_restrictions VARCHAR(255) NOT NULL,
    description CLOB NOT NULL
);

CREATE TABLE IF NOT EXISTS halls(
    id IDENTITY NOT NULL PRIMARY KEY,
    serial INT NOT NULL UNIQUE,
    seats INT NOT NULL
);

CREATE TABLE IF NOT EXISTS sessions(
    id IDENTITY NOT NULL PRIMARY KEY,
    hall_id INT NOT NULL,
    film_id INT NOT NULL,
    start_at TIMESTAMP NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (hall_id) REFERENCES halls(id),
    FOREIGN KEY (film_id) REFERENCES films(id)
);