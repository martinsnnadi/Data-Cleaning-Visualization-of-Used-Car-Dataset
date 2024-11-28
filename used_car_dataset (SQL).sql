

--Select and View all table  

SELECT AskPrice FROM w3school.dbo.UsedCar;



--Create a new Column called NewAskPrice

ALTER TABLE w3school.dbo.UsedCar ADD NewAskPrice INT;



--Remove "₹", space and comma  from AskPrice, convert value to integer and write to new Column Created 

UPDATE w3school.dbo.UsedCar
SET NewAskPrice = CAST(REPLACE(REPLACE(CAST(AskPrice AS VARCHAR(MAX)), '₹', ''), ',', '') AS INT);



--Select and View all table  

SELECT * FROM w3school.dbo.UsedCar;



--Remove "km" and comma  from KmDriven and convert value to integer, view NewKmDriven Column

SELECT 
    CAST(FLOOR(CAST(REPLACE(REPLACE(CAST(KmDriven AS VARCHAR(MAX)), 'km', ''), ',', '') AS FLOAT)) AS INT) AS NewKmDriven
FROM w3school.dbo.UsedCar;



--Create a new Column called NewKmDriven 

ALTER TABLE w3school.dbo.UsedCar ADD NewKmDriven INT;



--Remove "km" and comma  from KmDriven,convert value to integer and write to new Column Created 

UPDATE w3school.dbo.UsedCar
SET NewKmDriven = CAST(FLOOR(CAST(REPLACE(REPLACE(CAST(KmDriven AS VARCHAR(MAX)), 'km', ''), ',', '') AS FLOAT)) AS INT);



SELECT FuelType, AVG(CAST(NewAskPrice AS decimal)) FROM w3school.dbo.UsedCar GROUP BY FuelType;


SELECT FuelType,CAST(NewAskPrice AS INT) FROM w3school.dbo.UsedCar WHERE NewAskPrice > 1500000;
