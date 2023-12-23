CREATE TABLE Manufacturers (
    ManufacturerID INT PRIMARY KEY,
    ManufacturerName VARCHAR(255)
);

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(255),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(255)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(255),
    Sales INT,
    Buys INT
);

CREATE TABLE Models (
    ModelID INT PRIMARY KEY,
    ModelName VARCHAR(255),
    ManufacturerID INT,
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);

CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY,
    ClientID INT,
    EmployeeID INT,
    ModelID INT,
    Date DATE,
    Price DECIMAL(10, 2),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ModelID) REFERENCES Models(ModelID)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ClientID INT,
    EmployeeID INT,
    ModelID INT,
    Date DATE,
    Price DECIMAL(10, 2),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ModelID) REFERENCES Models(ModelID)
);

-- Insert data into Manufacturers table
INSERT INTO Manufacturers (ManufacturerID, ManufacturerName)
VALUES
    (1, 'Toyota'),
    (2, 'Honda'),
    (3, 'Ford'),
    (4, 'Chevrolet'),
    (5, 'Nissan'),
    (6, 'Volkswagen'),
    (7, 'Hyundai'),
    (8, 'BMW'),
    (9, 'Mercedes-Benz'),
    (10, 'Audi'),
    (11, 'Tesla'),
    (12, 'Mazda'),
    (13, 'Subaru'),
    (14, 'Kia'),
    (15, 'Lexus'),
    (16, 'Porsche'),
    (17, 'Jaguar'),
    (18, 'Land Rover');

-- Insert data into Clients table
INSERT INTO Clients (ClientID, ClientName, Address, PhoneNumber)
VALUES
    (1, 'John Doe', '123 Main St', '555-1234'),
    (2, 'Jane Smith', '456 Oak St', '555-5678'),
    (3, 'Mark Johnson', '789 Elm St', '555-3333'),
    (4, 'Emily Brown', '101 Pine St', '555-4444'),
    (5, 'Chris Evans', '456 Oak St', '555-5555'),
    (6, 'Emma White', '789 Elm St', '555-6666'),
    (7, 'Lucy Rodriguez', '101 Pine St', '555-7777'),
    (8, 'Noah Martinez', '456 Oak St', '555-8888'),
    (9, 'Luna Anderson', '789 Elm St', '555-9999'),
    (10, 'Leo Brown', '101 Pine St', '555-0000');
	

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, Sales, Buys)
VALUES
    (1, 'Alice Johnson', 10, 5),
    (2, 'Bob Smith', 8, 3),
    (3, 'Charlie Davis', 12, 7),
    (4, 'Diana Miller', 15, 6),
    (5, 'Gary Anderson', 20, 10),
    (6, 'Olivia Parker', 18, 8),
    (7, 'Sophia Adams', 22, 12),
    (8, 'Liam Parker', 25, 15),
    (9, 'Elijah Adams', 25, 14),
    (10, 'Scarlett Turner', 28, 17),
    (11, 'Luna Anderson', 30, 18),
    (12, 'Leo Brown', 28, 20);

-- Insert data into Models table
INSERT INTO Models (ModelID, ModelName, ManufacturerID)
VALUES
    (1, 'Camry', 1),
    (2, 'Accord', 2),
    (3, 'F-150', 3),
    (4, 'Civic', 2),
    (5, 'Silverado', 4),
    (6, 'Altima', 5),
    (7, 'Elantra', 7),
    (8, 'X5', 8),
    (9, 'C-Class', 9),
    (10, 'A4', 10),
    (11, 'Model S', 11),
    (12, 'Mazda3', 12),
    (13, 'Outback', 13),
    (14, 'Optima', 14),
    (15, 'RX', 15),
    (16, '911', 16),
    (17, 'F-PACE', 17),
    (18, 'Range Rover', 18);

-- Insert data into Purchases table
INSERT INTO Purchases (PurchaseID, ClientID, EmployeeID, ModelID, Date, Price)
VALUES
    (1, 1, 1, 1, '2023-01-15', 20000.00),
    (2, 2, 2, 2, '2023-02-20', 22000.00),
    (3, 3, 3, 4, '2023-05-20', 28000.00),
    (4, 4, 4, 5, '2023-06-25', 32000.00),
    (5, 5, 5, 7, '2023-09-20', 25000.00),
    (6, 6, 6, 8, '2023-10-25', 42000.00),
    (7, 7, 7, 10, '2024-01-20', 32000.00),
    (8, 8, 8, 11, '2024-02-25', 55000.00),
    (9, 9, 9, 13, '2024-05-20', 35000.00),
    (10, 10, 10, 14, '2024-06-25', 27000.00);
 

-- Insert data into Sales table
INSERT INTO Sales (SaleID, ClientID, EmployeeID, ModelID, Date, Price)
VALUES
    (1, 1, 2, 3, '2023-03-10', 25000.00),
    (2, 2, 1, 1, '2023-04-15', 18000.00),
    (3, 3, 4, 6, '2023-07-10', 22000.00),
    (4, 4, 3, 1, '2023-08-15', 19000.00),
    (5, 5, 6, 9, '2023-11-10', 35000.00),
    (6, 6, 5, 7, '2023-12-15', 29000.00),
    (7, 7, 8, 12, '2024-03-10', 28000.00),
    (8, 8, 7, 10, '2024-04-15', 33000.00),
    (9, 9, 10, 15, '2024-07-10', 45000.00),
    (10, 10, 9, 13, '2024-08-15', 32000.00);


	-- Çí ÇÓã ÇáÔÑßÇÊ ÇáãæÌæÏå 
SELECT * FROM Manufacturers;

--  Çí ÇÓãÇÁ ÇáßáÇíäÊ 
SELECT ClientName FROM Clients;


-- Çí ÇÓãÇÁ ÇáãæÙÝííä 
SELECT EmployeeName FROM Employees;

-- Çí ÇÓãÇÁ ÇáãæÏáÇÊ ÇáãæÌæÏå
SELECT ModelName FROM Models;

-- Çí åí ÌÏæá ÇáãÈíÚÇÊ
SELECT * FROM Purchases;



-- ÌÏæá ÇáãÔÊÑíÇÊ
SELECT * FROM Sales;

--  Çí ÚäæÇíä ÇáßáÇíäÊ 
SELECT Address FROM Clients;

-- ÚÑÖ ÚÏÏ ãÑÇÊ ÈíÚ ßá äãæÐÌ

SELECT
    m.ModelID,
    m.ModelName,
    (SELECT COUNT(SaleID) FROM Sales s WHERE s.ModelID = m.ModelID) AS SaleCount
FROM
    Models m;


-- ÚÑÖ ÇáäãÇÐÌ ÇáÊí Êã ÔÑÇÄåÇ æáßä áã íÊã ÈíÚåÇ
SELECT p.ModelID, m.ModelName
FROM Purchases p
LEFT JOIN Sales s ON p.ModelID = s.ModelID
JOIN Models m ON p.ModelID = m.ModelID
WHERE s.ModelID IS NULL;


-- ÃÙåÑ ÊÇÑíÎ ÂÎÑ ÚãáíÉ ÔÑÇÁ áßá Úãíá
SELECT ClientID, MAX(Date) AS LastPurchaseDate
FROM Purchases
GROUP BY ClientID;

-- ÚÑÖ ÇáäãÇÐÌ ÇáÊí ÊãÊáßåÇ ÔÑßÉ toyota
SELECT ModelName
FROM Models
WHERE ManufacturerID = (SELECT ManufacturerID FROM Manufacturers WHERE ManufacturerName = 'Toyota');

-- ÞÇÆãÉ ÇáÔÑßÇÊ ÇáãÕäÚÉ ÇáÊí áã íÊã ÔÑÇÁ Ãí äãæÐÌ ãäåÇ.
SELECT ma.ManufacturerID, ma.ManufacturerName
FROM Manufacturers ma
LEFT JOIN Models m ON ma.ManufacturerID = m.ManufacturerID
WHERE m.ModelID IS NULL;

-- ÚÑÖ ãÌãæÚ ãÈíÚÇÊ ßá äãæÐÌ

SELECT
    m.ModelID,
    m.ModelName,
    (SELECT SUM(Price) FROM Sales s WHERE s.ModelID = m.ModelID) AS TotalSales
FROM
    Models m;


--  ÚÑÖ ÃÍÏË 5 ÚãáíÇÊ ÈíÚ ÈÊÑÊíÈ ÊäÇÒáí ÍÓÈ ÇáÊÇÑíÎ

SELECT top 5 *
FROM Sales
ORDER BY Date DESC;

--  ÞÇÆãÉ ÚãáíÇÊ ÇáÔÑÇÁ ÇáÊí ÞÇã ÈåÇ ÇáÚãáÇÁ ÈÊÑÊíÈ ÊäÇÒáí ÍÓÈ ÊÇÑíÎ ÇáÔÑÇÁ
SELECT * FROM Purchases ORDER BY Date DESC;

-- ÞÇÆãå ÇáÚãáÇÁ ÇáÐíä áÏíåã ÃÑÞÇã åæÇÊÝ ÊÈÏÃ ÈÜ 555
SELECT * FROM Clients WHERE PhoneNumber LIKE '555%';

-- ÚÑÖ ÇáÓÚÑ ÇáãÊæÓØ áÌãíÚ ÚãáíÇÊ ÇáÔÑÇÁ
SELECT AVG(Price) AS AveragePrice FROM Purchases;

-- ÞÇÆãÉ ÇáÚãáÇÁ ÇáÐíä áã íÞæãæÇ ÈÃí ÚãáíÇÊ ÔÑÇÁ
SELECT c.ClientName FROM Clients c
LEFT JOIN Purchases p ON c.ClientID = p.ClientID
WHERE p.PurchaseID IS NULL;

-- ÚÑÖ ÃÚáì ÓÚÑ Èíä ÌãíÚ ÚãáíÇÊ ÇáÔÑÇÁ
SELECT
    p.PurchaseID,
    m.ModelName,
    c.ClientName AS Buyer,
    p.Price AS PurchasePrice
FROM
    Purchases p
JOIN
    Clients c ON p.ClientID = c.ClientID
JOIN
    Models m ON p.ModelID = m.ModelID
WHERE
    p.Price = (SELECT MAX(Price) FROM Purchases);

-- ÚÑÖ ÇáÔÑßÇÊ ÇáãÕäÚÉ ÈÊÑÊíÈ ÃÈÌÏí
SELECT * FROM Manufacturers ORDER BY ManufacturerName;

-- ÚÑÖ ÇáÚãáÇÁ ÇáÐíä ÞÇãæÇ ÈÚãáíÇÊ ÔÑÇÁ Ýí '2023-05-20' Ãæ ÈÚÏ Ðáß
SELECT c.ClientName FROM Clients c
JOIN Purchases p ON c.ClientID = p.ClientID
WHERE p.Date = '2023-05-20';

-- ÚÑÖ ÃÓãÇÁ ÇáãæÙÝíä æãÈíÚÇÊåã
SELECT EmployeeName, Sales FROM Employees;

--ÃÙåÑ ÌãíÚ ÚãáíÇÊ ÇáÔÑÇÁ ÈÓÚÑ ÃßÈÑ ãä30000
SELECT * FROM Purchases WHERE Price > 30000.00;


UPDATE Employees
SET Buys = Buys + 3
WHERE EmployeeID = 6;


UPDATE Clients
SET Address = '456 Pine St'
WHERE ClientID = 3;


UPDATE Employees
SET Sales = 30
WHERE EmployeeID = 8;

UPDATE Clients
SET ClientName = 'John Smith'
WHERE ClientID = 1;

UPDATE Manufacturers
SET ManufacturerName = 'Mazda Motor Corporation'
WHERE ManufacturerID = 12;

UPDATE Models
SET ModelName = 'Santa Fe'
WHERE ModelID = 7;

UPDATE Sales
SET Date = '2023-08-20'
WHERE SaleID = 4;

--DELET

/*DELETE FROM Manufacturers
WHERE ManufacturerID = 12;


DELETE FROM Clients
WHERE ClientID = 8;

DELETE FROM Models
WHERE ModelID = 16;

DELETE FROM Employees
WHERE EmployeeID = 9;


DELETE FROM Purchases
WHERE PurchaseID = 5;


DELETE FROM Models
WHERE ModelID = 18;

*/
--ALTER

ALTER TABLE Purchases
ALTER COLUMN Date DATETIME;

ALTER TABLE Employees
ALTER COLUMN EmployeeName VARCHAR(355);

ALTER TABLE Models
ADD  Color VARCHAR(50);

EXEC sp_rename 'Employees.Buys', 'Purchases', 'COLUMN'

ALTER TABLE Purchases
ALTER COLUMN Price INT;

ALTER TABLE Clients
ADD Country VARCHAR(255);

--SELECT * FROM Models;
-- add data to color 
UPDATE Models
SET Color = 'Blue' WHERE ModelID in (1 ,15);

UPDATE Models
SET Color = 'Red' WHERE ModelID in (2 ,16);

UPDATE Models
SET Color = 'White' WHERE ModelID in (3 ,13);

UPDATE Models
SET Color = 'Silver' WHERE ModelID in (4 ,17);

UPDATE Models
SET Color = 'Black' WHERE ModelID = 5;

UPDATE Models
SET Color = 'Gray' WHERE ModelID = 6;

UPDATE Models
SET Color = 'Blue' WHERE ModelID = 7;
UPDATE Models
SET Color = 'Red' WHERE ModelID = 8;

UPDATE Models
SET Color = 'Green' WHERE ModelID = 9;

UPDATE Models
SET Color = 'Yellow' WHERE ModelID = 10;

UPDATE Models
SET Color = 'Purple' WHERE ModelID in (11,14);

UPDATE Models
SET Color = 'Orange' WHERE ModelID in (12 ,18);

SELECT * FROM Clients;
UPDATE Clients SET Country = 'USA' WHERE ClientID IN (1, 2, 3);
UPDATE Clients SET Country = 'Canada' WHERE ClientID IN (4, 5, 9);
UPDATE Clients SET Country = 'Germany' WHERE ClientID IN (7, 12, 6);
UPDATE Clients SET Country = 'France' WHERE ClientID IN (10);
UPDATE Clients SET Country = 'Spain' WHERE ClientID IN (11, 8 );


