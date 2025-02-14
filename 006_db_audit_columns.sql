CREATE TABLE IF NOT EXISTS simpleschema.users (
    id UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

ALTER TABLE simpleschema.books
    ADD COLUMN created_by UUID,
    ADD COLUMN updated_by UUID,
    ADD COLUMN created_at TIMESTAMP,
    ADD COLUMN updated_at TIMESTAMP;

ALTER TABLE simpleschema.books
    ADD CONSTRAINT fk_books_created_by FOREIGN KEY (created_by) REFERENCES simpleschema.users(id),
    ADD CONSTRAINT fk_books_updated_by FOREIGN KEY (updated_by) REFERENCES simpleschema.users(id);

ALTER TABLE simpleschema.authors
    ADD COLUMN created_by UUID,
    ADD COLUMN updated_by UUID,
    ADD COLUMN created_at TIMESTAMP,
    ADD COLUMN updated_at TIMESTAMP;

ALTER TABLE simpleschema.authors
    ADD CONSTRAINT fk_authors_created_by FOREIGN KEY (created_by) REFERENCES simpleschema.users(id),
    ADD CONSTRAINT fk_authors_updated_by FOREIGN KEY (updated_by) REFERENCES simpleschema.users(id);