USE StudentManagement;
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, Name VARCHAR(50), Department VARCHAR(30), JoiningDate DATE);
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate) VALUES (1, 'Amaya', 'Finance', '2022-05-12'), (2, 'Divya', 'HR', '2021-03-20'), (3, 'Eva', 'IT', '2023-01-10');
ALTER TABLE Employees ADD LastUpdated Date, ADD Status VARCHAR(10);
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees SET Status = 'Active';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees SET LastUpdated = CURRENT_DATE;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Employees;
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate, LastUpdated, Status) VALUES
  (4, 'Kevin', 'IT', '2021-05-12', '2021-07-07', 'Inactive'),
  (5, 'Mansa', 'Finance', '2022-03-14', '2022-06-07','Inactive');
SELECT * From Employees WHERE Status = 'Inactive';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Employees WHERE Status = 'Inactive'; 
SET SQL_SAFE_UPDATES = 1;
DESCRIBE Employees;
SELECT * FROM Employees;
SELECT * FROM Employees WHERE Status = 'Inactive';
