update simpleschema.books SET author_id = (SELECT id from simpleschema.authors WHERE email = 'fscottfitzgerald@example.com')
where title = 'The Great Gatsby';

update simpleschema.books SET author_id = (SELECT id from simpleschema.authors WHERE email = 'harperlee@example.com')
where title = 'To Kill a Mockingbird';

update simpleschema.books SET author_id = (SELECT id from simpleschema.authors WHERE email = 'georgeorwell@example.com')
where title = '1984';

update simpleschema.books SET author_id = (SELECT id from simpleschema.authors WHERE email = 'janeausten@example.com')
where title = 'Pride and Prejudice';

update simpleschema.books SET author_id = (SELECT id from simpleschema.authors WHERE email = 'hermanmelville@example.com')
where title = 'Moby Dick';