CREATE TABLE [dbo].[Orders]
(
	[OrderID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderNumber] NVARCHAR(50) NOT NULL UNIQUE, 
    [DateOrdered] DATETIME2 NOT NULL, 
    [CustomerName] NVARCHAR(100) NOT NULL, 
    [CustomerAddress] NVARCHAR(250) NOT NULL
)
