/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select * from dbo.parts)
begin
    insert into dbo.parts(PartName, PartDescription, Price)
    values ('Test Part 1', 'A part for testing', 19.99),
    ('Test Part 2', 'A second part for testing', 1.99),
    ('Test Part 3', 'A third part for testing', NULL);
end

if not exists (select * from dbo.orders)
begin
    insert into dbo.orders(OrderNumber, DateOrdered, CustomerName, CustomerAddress)
    values ('Test Order 1', '2021-01-01 01:00:00', 'John Doe', '1234 Anywhere St'),
    ('Test Order 2', '2021-01-20 13:30:00', 'Jane Doe', '555 Park Ave Chicago, IL 12345');
end

if not exists (select * from dbo.Bins)
begin
    insert into dbo.bins(BinName)
    values ('Test Bin 1'),
    ('Test Bin 2');
end
GO
