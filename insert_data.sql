USE LibraryDB; 

--The following should add data Author to the table
INSERT INTO Authors (Name, Country)
VALUES
('J.K Rowlink', 'UK'),
('George RR Martin', 'USA'),
('J.R.R Tolkien', 'UK');


SELECT  * FROM Authors;

-- The following should add data to the movie table
INSERT INTO Movies(Title, Director, Country)
VALUES
('Harry Potter', 'Chris Columbus','UK'),
('Lord Of the Rings', 'Peter Jackson', 'New Zealand'),
('Game Of Thrones', 'Various', 'USA'); 

-- The following add data to the Book table 
INSERT INTO Books (Title, AuthorID)
VALUES
('Harr Potter',1),
('A Game of Thrones',2),
('Lord Of Rings', 3);

-- Insert data of the borrowers table 
INSERT INTO Borrowers (Name, Email, BorrowedBookID, BorrowDate, ReturnDate)
VALUES
('Ramy Kader', 'ramy@gmail.com', 1, '01-21-2024', '02-21-2024'),
('Felicia Edwards', 'felicia@gmail', 2, '01-22-2024', '02-22-2024');