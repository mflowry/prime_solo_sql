Which authors are represented in our store?
SELECT * FROM authors;


Which authors are also distinguished authors?
SELECT * FROM authors JOIN distinguished_authors ON authors.last_name = distinguished_authors.last_name;


Which authors are not distinguished authors?
SELECT * FROM authors LEFT JOIN distinguished_authors ON authors.last_name = distinguished_authors.last_name WHERE distinguished_authors.last_name is NULL;


How many authors are represented in our store?
SELECT COUNT(DISTINCT author_id) FROM books;

Who are the favorite authors of the employee with the first name of Michael?
SELECT * FROM employees JOIN favorite_authors ON employees.id = favorite_authors.employee_id;


What are the titles of all the books that are in stock today?
SELECT is_stocked, title
  FROM daily_inventory
  NATURAL JOIN editions
  NATURAL JOIN books
  WHERE daily_inventory.is_stocked;

Insert one of your favorite books into the database. Hint: You’ll want to create data into at least 2 other tables to completely create this book.


What authors have books that are not in stock?
SELECT is_stocked, last_name
  FROM daily_inventory
  NATURAL JOIN editions
  NATURAL JOIN authors
  WHERE is_stocked = FALSE;

What is the title of the book that has the most stock?
SELECT stock
    FROM stock
    ORDER BY stock DESC;
    (found the highest stock = 89)

  SELECT stock, title
  FROM stock
  NATURAL JOIN editions
  NATURAL JOIN books
  WHERE stock = 89;
