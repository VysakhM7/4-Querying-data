CREATE DATABASE CountryData;

-- Switch to the new database
USE CountryData;
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'India', 1393409038, 3287263),
(3, 'UK', 68100000, 243610),
(4, 'Canada', 38000000, 9984670),
(5, 'Australia', 25600000, 7692024),
(6, 'Japan', 125800000, 377975),
(7, 'Germany', 83000000, 357022),
(8, 'France', 67000000, 551695),
(9, 'Italy', 59000000, 301340),
(10, 'Spain', 47000000, 505990);
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 1393409038, 4.2, 2, 'India'),
(3, 'Alice', 'Brown', 68100000, 3.9, 3, 'UK'),
(4, 'Bob', 'Davis', 38000000, 4.7, 4, 'Canada'),
(5, 'Charlie', 'Miller', 25600000, 3.5, 5, 'Australia'),
(6, 'Emily', 'Wilson', 125800000, 4.9, 6, 'Japan'),
(7, 'David', 'Clark', 83000000, 3.8, 7, 'Germany'),
(8, 'Sophia', 'Lopez', 67000000, 4.6, 8, 'France'),
(9, 'Ethan', 'Martin', 59000000, 4.1, 9, 'Italy'),
(10, 'Mia', 'Garcia', 47000000, 3.6, 10, 'Spain');
SELECT DISTINCT Country_name FROM Persons;
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;
SELECT * FROM Persons WHERE Rating > 4.0;
SELECT * FROM Country WHERE Population > 1000000;
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;
SELECT * FROM Persons WHERE Country_name IS NULL;
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';
