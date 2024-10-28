---CREATE DATABASE
CREATE DATABASE DML_CHECKPOINT2
--CREATE TABLE Vehicles
CREATE TABLE Vehicles(LicensePlate VARCHAR(50),
                      Make VARCHAR(50),
					  Model VARCHAR(50),
					  Year VARCHAR(50),
					  Color VARCHAR(50),
					  VIN VARCHAR(50));
	  
--INSERTING INTO VEHICLES TABLE		
INSERT INTO Vehicles
VALUES ('ABC123', 'Toyota', 'Corolla', '2020','White', '1HGCM82633A004352'),
        ('XYZ789', 'Ford',  'Fusion', '2018', 'Blue', '2HGCM82633A004353');


--CREATE Drivers Table
CREATE TABLE Drivers(FirstName VARCHAR (50),
                     LastName VARCHAR(50),
					 LicenseNumber VARCHAR(50),
					 Phone VARCHAR(50),
					 Address VARCHAR(50),
					 City VARCHAR(50),
					 State VARCHAR(50),
					 Zipcode VARCHAR(50));

INSERT INTO Drivers 
VALUES('Michael','Smith','D1234567', '1234567890', '123 Main St', 'Anytown', 'CA', '12345'),
('Sarah', 'Connor','D7654321', '0987654321', '456 Elm St', 'Otherville', 'NY', '54321');

--CREATE TABLE TRIPS
CREATE  TABLE Trips (VehicleID INT,
                     DriverID INT,
					 StartDate DATETIME DEFAULT GETDATE(),
					 EndDate DATETIME DEFAULT GETDATE(),
					 StartLocaton VARCHAR(50),
					 EndLocation VARCHAR(50),
					 Distance INT );
--INSERTING INTO TRIPS TABLE
INSERT INTO Trips 
VALUES(1, 1, '2024-07-01', '2024-07-02','Los Angeles','San Francisco', 380),
       (2, 2, '2024-07-03', '2024-07-04','New York','Washington D.C.', 225);
SELECT * FROM TRIPS

---CREATE Maintenace table
CREATE TABLE Maintenance(VehiclesID INT,
                         MaintenanceDate DATETIME DEFAULT GETDATE(),
						 Description VARCHAR(30),
						 Cost DECIMAL (20));

---INSERTING INTO MAINTENANCE
INSERT INTO Maintenance
VALUES(1,'2024-06-15','Oil change', 50.00),
      (2, '2024-06-20', 'Tire replacement', 300.00);


SELECT * FROM  Vehicles
SELECT * FROM  Drivers
SELECT * FROM  Trips
SELECT * FROM  MAINTENANCE

--Update the cost of the second maintenance record to 350.00
UPDATE Maintenance
SET Cost=350
WHERE VehiclesID=2;


--Delete the first vehicle from the Vehicles table.
DELETE FROM Vehicles 
WHERE LicensePlate='ABC123';

--Insert one more record into the Trips table with the following details:
--VehicleID: 2, DriverID: 1, StartDate: '2024-07-05', EndDate: '2024-07-06', StartLocation: "Boston", 
--EndLocation: "Philadelphia", Distance: 300
INSERT INTO Trips 
VALUES(2, 1, '2024-07-05', '2024-07-06', 'Boston', 'Philadelphia', 300);

--Update the color of the second vehicle in the Vehicles table to "Red".
UPDATE Vehicles
SET Color='Red'
WHERE LicensePlate= 'XYZ789';


--Insert a new maintenance record into the Maintenance table with the following details:
--(VehicleID: 1, MaintenanceDate: '2024-07-10', Description: "Brake inspection", Cost: 100.00
INSERT INTO Maintenance 
VALUES(1, '2024-07-10', 'Brake inspection', 100);


--Update the phone number of the first driver in the Drivers table to "2223334444".
UPDATE Drivers 
SET Phone='2223334444'
WHERE LicenseNumber= 'D1234567';

--Delete the trip with TripID = 2 from the Trips table.
--ANWERS: there is no colomn name TripID on the TRIPS TABLE


