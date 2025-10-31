/*Remember to create tables in the correct order to satisfy 
foreign key constraints */

-- Create Category Table
CREATE TABLE category(
    ID BIGSERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL
);

-- Create Book Table 
CREATE TABLE book(
    ID BIGSERIAL PRIMARY KEY,
    Release_Year INT NOT NULL,
    Remaining_Quantity INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Category_ID BIGINT REFERENCES category(ID)
);

-- Create Author Table
CREATE TABLE author(
    ID BIGSERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL
);

-- Create Book_Author Junction Table
CREATE TABLE book_author(
    Book_ID BIGINT REFERENCES book(ID),
    Author_ID BIGINT REFERENCES author(ID),
    PRIMARY KEY (Book_ID, Author_ID)
    -- Ensure that each book-author pair is unique
);

-- Create User Table
CREATE TABLE Participant( 
    ID BIGSERIAL PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Birthdate DATE NOT NULL,
    Address VARCHAR(250) NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Register_Date DATE NOT NULL,
    Status BOOLEAN NOT NULL
    -- Is the user active or not, TRUE for active, FALSE for inactive
);

-- Create Loan Record Table
CREATE TABLE loan_record(
    ID BIGSERIAL PRIMARY KEY,
    User_ID BIGINT REFERENCES Participant(ID),
    Loan_Date DATE NOT NULL,
    Expected_Return_Date DATE NOT NULL,
    Real_Return_Date DATE
    -- Date when the book was returned is NULL if not yet returned
);

-- Create Loan Record in detail Table
CREATE TABLE loan_record_in_detail(
    Loan_Record_ID BIGINT REFERENCES loan_record(ID),
    Book_ID BIGINT REFERENCES book(ID),
    Quantity INT NOT NULL,
    PRIMARY KEY (Loan_Record_ID, Book_ID)
    -- Ensure that each loan record-book pair is unique
);