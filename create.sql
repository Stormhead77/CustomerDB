CREATE DATABASE [CustomerLib_Tolstykh]
GO

USE [CustomerLib_Tolstykh]
GO

CREATE TABLE [Customers]
(
	CustomerID int IDENTITY NOT NULL PRIMARY KEY,
	FirstName nvarchar(50),
	LastName nvarchar(50) NOT NULL,
	PhoneNumber nvarchar(16) CHECK(PhoneNumber LIKE '+[1-9][0-9]%'),
	Email nvarchar(50) CHECK (Email LIKE '%_@_%._%'),
	TotalPurchasesAmount MONEY DEFAULT NULL
);

CREATE TABLE [CustomerNotes]
(
	CustomerID int REFERENCES [Customers] (CustomerID) NOT NULL,
	NoteText nvarchar(100)
);

CREATE TABLE [Addresses]
(
	AddressID int IDENTITY NOT NULL PRIMARY KEY,
	CustomerID int REFERENCES [Customers] (CustomerID) NOT NULL,
	AddressLine nvarchar(100) NOT NULL,
	AddressLine2 nvarchar(100),
	AddressType nvarchar(20) NOT NULL CHECK (AddressType IN('Shipping', 'Billing')),
	City nvarchar(50) NOT NULL,
	PostalCode nvarchar(6) NOT NULL,
	State nvarchar(20) NOT NULL,
	Country nvarchar(20) NOT NULL CHECK (Country IN('United States', 'Canada')) 
);