-- Database: "Teste1"

-- DROP DATABASE "Teste1";

--CREATE DATABASE "Teste1"
--  WITH OWNER = postgres
--       ENCODING = 'UTF8'
--       TABLESPACE = pg_default
--       LC_COLLATE = 'Portuguese_Brazil.1252'
--       LC_CTYPE = 'Portuguese_Brazil.1252'
--       CONNECTION LIMIT = -1;

--CREATE TABLE Persons

--(
--PersonID int,
--LastName varchar(255),
--FirstName varchar(255),
--Address varchar(255),
--City varchar(255)
--);
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (16, 'Tálio', 'Jonas', 'Rua 3', 'Parnamirim');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (17, 'Dragoni', 'Absterio', 'Rua 12', 'Caicó');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (18, 'Rossi', 'Lino', 'Rua 4', 'Natal');
SELECT * FROM Persons;

SELECT LastName FROM Persons;
SELECT FirstName FROM Persons;

SELECT * FROM Persons
ORDER BY PersonID;