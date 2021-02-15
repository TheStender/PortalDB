﻿CREATE TABLE [dbo].[PartInventory]
(
	[InventoryID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PartID] INT NOT NULL, 
    [BinID] INT NOT NULL, 
    [QTY] INT NOT NULL,
    FOREIGN KEY (PartID) REFERENCES Parts(PartID),
    FOREIGN KEY (BinID) REFERENCES Bins(BinID)
)
