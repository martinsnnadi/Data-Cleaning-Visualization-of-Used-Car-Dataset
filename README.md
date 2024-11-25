# Data-Cleaning-Visualization-of-Used-Car-Dataset
Data Cleaning &amp; Visualization of Used Car Dataset using SQL Server and PowerBI
I obtained a used car dataset from Kaggle, which I plan to clean and load into Power BI for data modelling and visualization. Initially, I imported the data into SQL Server using SSMS and performed some cleaning operations, as detailed below.

--Select and View all table  

SELECT AskPrice FROM w3school.dbo.UsedCar



--Create a new Column called NewAskPrice

ALTER TABLE w3school.dbo.UsedCar ADD NewAskPrice INT;



--Remove "₹", space and comma  from AskPrice, convert value to integer and write to new Column Created 

UPDATE w3school.dbo.UsedCar
SET NewAskPrice = CAST(REPLACE(REPLACE(CAST(AskPrice AS VARCHAR(MAX)), '₹', ''), ',', '') AS INT);



--Select and View all table  

SELECT * FROM w3school.dbo.UsedCar



--Remove "km" and comma  from KmDriven and convert value to integer, view NewKmDriven Column

SELECT 
    CAST(FLOOR(CAST(REPLACE(REPLACE(CAST(KmDriven AS VARCHAR(MAX)), 'km', ''), ',', '') AS FLOAT)) AS INT) AS NewKmDriven
FROM w3school.dbo.UsedCar;



--Create a new Column called NewKmDriven 

ALTER TABLE w3school.dbo.UsedCar ADD NewKmDriven INT;



--Remove "km" and comma  from KmDriven,convert value to integer and write to new Column Created 

UPDATE w3school.dbo.UsedCar
SET NewKmDriven = CAST(FLOOR(CAST(REPLACE(REPLACE(CAST(KmDriven AS VARCHAR(MAX)), 'km', ''), ',', '') AS FLOAT)) AS INT);

Next, I imported the data into Power BI to begin creating visualizations. I developed the following visuals:
•	Card Visual: Displays the count of brands, count of cars, total sales, and count of models.
•	Stacked Column Chart: Shows the count of cars by brand and transmission type.
•	Line Chart: Illustrates the asking price by the year of the car.
•	Donut Chart: Represents the count of cars by fuel type.
•	Donut Chart: Depicts the count of cars by owner type (first or second owner).
•	Clustered Column Chart: Displays the average mileage driven by brand.
•	Stacked Column Chart: Shows the average asking price by owner type (first or second owner).
•	Stacked Column Chart: Illustrates the average asking price by fuel type (diesel, petrol, and hybrid/CNG).
•	Stacked Bar Chart: Shows total sales by brand.
•	Stacked Column Chart: Displays the average asking price by the age of the car.


