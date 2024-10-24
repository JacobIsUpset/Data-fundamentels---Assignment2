
/* part 1 */

CREATE TABLE authors(
	authorID SERIAL,
	authorName VARCHAR(50) NOT NULL,
	PRIMARY KEY (authorID)
);

CREATE TABLE books(
	authorID INT NOT NULL,
	bookID SERIAL,
	bookName VARCHAR(50) NOT NULL,
	publishedYear int,
	PRIMARY KEY (bookID),
	FOREIGN KEY (authorID) REFERENCES authors(authorID)
);

/* part 2 */

INSERT INTO authors(authorName) 
VALUES
('George Orwell'),
('Agatha Christie'),
('J.K. Rowling');

INSERT INTO books(authorID, bookName, publishedYear) 
VALUES
(1,'1984', 1949),
(1,'Animal Farm', 1945),
(2, 'Murder on the Orient Express', 1934),
(2, 'The ABC Murders', 1936),
(3, 'Harry Potter and the Philosophers Stone', 1997),
(3, 'Harry Potter and the Chamber of Secrets', 1998);


/* part 3 */

SELECT authorName FROM authors ORDER BY authorName ASC;

SELECT bookName FROM books WHERE authorID = 4 ORDER BY bookName ASC LIMIT 3;

SELECT authorID FROM books WHERE publishedYear < 1930 AND publishedYear > 1920;

SELECT bookName FROM books WHERE publishedYear <= 1960 AND publishedYear >= 1920 AND authorID != 1 ORDER BY bookName DESC;
