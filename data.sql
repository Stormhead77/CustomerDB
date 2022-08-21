USE [CustomerLib_Tolstykh]
GO

-- [Customers] --
-- VALID DATA
INSERT INTO [Customers]
	(FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES
	('Jennifer', 'Hanson', '+16520489', 'Jennifer@Hanson.com', 1000),
	('Timothy', 'Bates', '+1652667', 'Timothy@Bates.com', 123);

-- INVALID DATA
INSERT INTO [Customers]
	(FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES
	('Jennifer', '', '+16520489', 'Jennifer@Hanson.com', 1000),
	('Jennifer', 'Hanson', 'qwerty', 'Jennifer@Hanson.com', 1000),
	('Jennifer', 'Hanson', '+16520489', '@Hanson.com', 1000);

-- [CustomerNotes] --
-- VALID DATA
INSERT INTO [CustomerNotes]
	(CustomerID, NoteText)
VALUES
	(1, 'silly'),
	(1, 'smart');

-- INVALID DATA
INSERT INTO [CustomerNotes]
	(CustomerID, NoteText)
VALUES
	(NULL, 'silly');
	
-- [Addresses] --
-- VALID DATA
INSERT INTO [Addresses]
	(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
	(1, '2767 Oral Lake Road', '', 'Shipping', 'Apple Valley', '55124', 'MN', 'United States'),
	(1, '1231 Colonial Drive', '', 'Billing', 'Houston', '77027', 'TX', 'Canada');

-- INVALID DATA
INSERT INTO [Addresses]
	(CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
VALUES
	(11, '', '', 'Unnown', 'Apple Valley', '55124', 'MN', 'China');