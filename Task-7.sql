USE StudentManagement;
CREATE TABLE Student(Student_ID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE Scores(Score_ID INT PRIMARY KEY, Student_ID INT, Subject VARCHAR(30), Score INT, FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID));
INSERT INTO Student(Student_ID, Name) VALUES (1, 'Amaya'), (2, 'Divya'), (3, 'Elvin');
INSERT INTO Scores(Score_ID, Student_ID, Subject, Score) VALUES (1, 1, 'Math', 92), (2, 1, 'Science', 90), (3, 2, 'Math', 38), (4, 2, 'Science', 42), (5, 3, 'Math', 78), (6, 3, 'Science', 85);
CREATE VIEW Student_Scores AS SELECT s.Student_ID, s.Name, sc.Subject, sc.Score FROM Student s JOIN Scores sc ON s.Student_ID = sc.Student_ID;
SELECT * FROM Student_Scores;
CREATE VIEW Passed_Students AS SELECT Student_ID, Name FROM Student WHERE Student_ID NOT IN (SELECT Student_ID FROM Scores WHERE Score < 40);
SELECT * FROM Passed_Students;
