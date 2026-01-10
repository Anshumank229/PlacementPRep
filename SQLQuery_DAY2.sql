USE SQL_Practice;
GO
SELECT DB_NAME() AS CurrentDatabase;
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
SELECT TOP 100 * 
FROM [dbo].[Titanic-Dataset];

SELECT COUNT(*) AS TotalRows 
FROM [dbo].[Titanic-Dataset];
-- Passengers who survived
-- Passengers who survived
select * from [dbo].[Titanic-Dataset] where Survived=1;
select count(*) from [dbo].[Titanic-Dataset] where Survived=1;
-- Passengers older than 50
select Name,Age,Sex from [dbo].[Titanic-Dataset] where age >50
-- Top 10 highest fare passengers
select Top 10 PassengerId,Name,Sex,Age,Ticket,Fare from [dbo].[Titanic-Dataset] order by fare desc
SELECT * 
FROM [dbo].[Titanic-Dataset];
-- Survival count
Select count(*) Survived
FROM [dbo].[Titanic-Dataset]
where Survived=1
group by Survived
-- Average age by class
Select AVG (Age)
FROM [dbo].[Titanic-Dataset]
