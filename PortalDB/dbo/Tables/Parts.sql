CREATE TABLE [dbo].[Parts]
(
	[PartID] INT NOT NULL PRIMARY KEY IDENTITY,
	[PartName] nvarchar(50) NOT NULL UNIQUE,
	[PartDescription] nvarchar(100) NOT NULL, 
    [Price] MONEY NULL
)
