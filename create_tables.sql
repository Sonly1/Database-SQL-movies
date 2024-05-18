USE LibraryDB;

-- Drop tables if they already exist
IF OBJECT_ID('dbo.Borrowers', 'U') IS NOT NULL
    DROP TABLE dbo.Borrowers;

IF OBJECT_ID('dbo.Books', 'U') IS NOT NULL
    DROP TABLE dbo.Books;

IF OBJECT_ID('dbo.Movies', 'U') IS NOT NULL
    DROP TABLE dbo.Movies;

IF OBJECT_ID('dbo.Authors', 'U') IS NOT NULL
    DROP TABLE dbo.Authors;

-- Creating the Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

-- Creating the Movies table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(100) NOT NULL,
    Director VARCHAR(100) NOT NULL, 
    Country VARCHAR(50)
);

-- Creating the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(100) NOT NULL,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Creating the Borrowers table
CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    BorrowedBookID INT,
    BorrowDate DATE, 
    ReturnDate DATE,
    FOREIGN KEY (BorrowedBookID) REFERENCES Books(BookID)
);