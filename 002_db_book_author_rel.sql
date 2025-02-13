ALTER TABLE simpleschema.books
ADD COLUMN author_id INT NULL;

ALTER TABLE simpleschema.books
ADD CONSTRAINT fk_books_authors
FOREIGN KEY (author_id) REFERENCES simpleschema.authors(id);