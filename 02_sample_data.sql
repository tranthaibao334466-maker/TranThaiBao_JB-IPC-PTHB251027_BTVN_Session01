INSERT INTO category (Name, Description) VALUES
('Science Fiction', 'Books that explore futuristic concepts and advanced technology.'), -- ID 1: Science Fiction
('Fantasy', 'Books that contain magical or supernatural elements set in imaginary worlds.'), -- ID 2: Fantasy
('Mystery', 'Books that involve solving a crime or uncovering secrets.'), -- ID 3: Mystery
('Non-Fiction', 'Books based on factual information and real events.'); -- ID 4: Non-Fiction

INSERT INTO book (Name, Release_Year, Remaining_Quantity, Category_ID) VALUES
('Dune', 1965, 10, 1), -- ID 1: Dune
('The Hobbit', 1937, 5, 2), -- ID 2: The Hobbit
('The Da Vinci Code', 2003, 8, 3), -- ID 3: The Da Vinci Code
('Sapiens: A Brief History of Humankind', 2011, 12, 4), -- ID 4: Sapiens
('1984', 1949, 7, 1), -- ID 5: 1984
('Harry Potter and the Sorcerer''s Stone', 1997, 15, 2); -- ID 6: Harry Potter

INSERT INTO author (Name, Description) VALUES
('Frank Herbert', 'American science fiction author best known for the novel Dune.'), -- ID 1: Frank Herbert
('J.R.R. Tolkien', 'English writer, poet, and academic, author of The Hobbit and The Lord of the Rings.'), -- ID 2: J.R.R. Tolkien
('Dan Brown', 'American author known for his thriller novels, including The Da Vinci Code.'), -- ID 3: Dan Brown
('Yuval Noah Harari', 'Israeli public intellectual, historian, and professor known for Sapiens.'); -- ID 4: Yuval Noah Harari

INSERT INTO book_author (Book_ID, Author_ID) VALUES
(1,1), -- Dune - Frank Herbert
(2,2), -- The Hobbit - J.R.R. Tolkien
(2,3), -- The Hobbit - Dan Brown (co-author for demonstration) 
(3,3), -- The Da Vinci Code - Dan Brown
(3,4), -- The Da Vinci Code - Yuval Noah Harari (co-author for demonstration)
(4,4), -- Sapiens - Yuval Noah Harari
(5,1), -- 1984 - Frank Herbert (an author with more than one book)
(6,2), -- Harry Potter - J.R.R. Tolkien (co-author for demonstration)
(6,3); -- Harry Potter - Dan Brown (co-author for demonstration)

INSERT INTO Participant (Username, Birthdate, Address, Phone, Email, Register_Date, Status) VALUES
('john_doe', '1990-05-15', '123 Main St, Anytown, USA', '1234567890', 'johndoe@gmail.com', '2023-01-10', TRUE), -- ID 1: John Doe 
('jane_smith', '1985-08-22', '456 Oak St, Sometown, USA', '2345678901', 'janesmith@gmail.com', '2023-02-20', TRUE), -- ID 2: Jane Smith
('alice_jones', '1992-11-30', '789 Pine St, Othertown, USA', '3456789012', 'alice@gmail.com', '2023-03-15', FALSE), -- ID 3: Alice Jones
('bob_brown', '1988-03-10', '321 Maple St, Anycity, USA', '4567890123', 'bob@gmail.com', '2023-04-05', TRUE), -- ID 4: Bob Brown
('charlie_black', '1995-07-25', '654 Cedar St, Somecity, USA', '5678901234', 'charlie@gmail.com', '2023-05-12', TRUE); -- ID 5: Charlie Black


INSERT INTO loan_record (User_ID, Loan_Date, Expected_Return_Date, Real_Return_Date) VALUES
(2, '2023-06-01', '2023-06-15', '2023-06-14'), -- Jane Smith - Loan Record ID 1
(1, '2023-06-05', '2023-06-20', NULL), -- John Doe - Loan Record ID 2
(4, '2023-06-10', '2023-06-25', '2023-06-24'), -- Bob Brown - Loan Record ID 3
(3, '2023-06-12', '2023-06-27', NULL), -- Alice Jones - Loan Record ID 4
(5, '2023-06-15', '2023-06-30', NULL), -- Charlie Black - Loan Record ID 5
(2, '2023-06-18', '2023-07-03', NULL); -- Jane Smith - Loan Record ID 6 (Jane borrows again)

INSERT INTO loan_record_in_detail (Loan_Record_ID, Book_ID, Quantity) VALUES
(1, 3, 1), -- Jane Smith borrowed 1 copy of The Da Vinci Code 
(1, 4, 2), -- Jane Smith borrowed 2 copies of Sapiens
(6, 5, 1), -- Jane Smith borrowed 1 copy of 1984 in her second loan
(6, 1, 1), -- Jane Smith borrowed 1 copy of Dune in her second loan
(2, 1, 2), -- John Doe borrowed 2 copies of Dune
(2, 5, 1), -- John Doe borrowed 1 copy of 1984
(3, 6, 1), -- Bob Brown borrowed 1 copy of Harry Potter 
(3, 2, 1), -- Bob Brown borrowed 1 copy of The Hobbit
(4, 2, 1), -- Alice Jones borrowed 1 copy of The Hobbit
(5, 4, 1); -- Charlie Black borrowed 1 copy of Sapiens



