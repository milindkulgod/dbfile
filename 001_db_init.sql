create schema if not exists simpleschema;

CREATE TABLE IF NOT EXISTS simpleschema.books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NULL,
    notes TEXT NULL
);

CREATE TABLE IF NOT EXISTS simpleschema.authors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NULL
);

