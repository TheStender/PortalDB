CREATE TABLE [dbo].[OrderLines]
(
	[OrderLineID] INT NOT NULL PRIMARY KEY IDENTITY, 
	OrderID int NOT NULL,
    [PartID] INT NOT NULL, 
    [QTY] INT NOT NULL, 
    [Price] MONEY NULL, 
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (PartID) REFERENCES Parts(PartID)

)
