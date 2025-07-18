USE StudentManagement;
CREATE TABLE StudentScores (StudentID INT, TotalScore INT, MathScore INT, ScienceScore INT);
INSERT INTO StudentScores (StudentID, TotalScore, MathScore, ScienceScore) VALUES (1,85,35,60),(2,95,45,50),(3,65,25,20),(4,75,40,30);
SELECT * FROM StudentScores;
SELECT StudentID, TotalScore, 
	CASE 
		WHEN TotalScore >= 90 THEN 'A' 
        WHEN TotalScore >= 80 THEN 'B' 
        WHEN TotalScore >= 70 THEN 'C' 
        ELSE 'D (Fail)' 
	END AS Grade 
FROM StudentScores;
SELECT StudentID, MathScore, 
	CASE 
		WHEN MathScore >= 40 THEN 'Pass' 
        ELSE 'Fail' 
	END AS MathStatus, ScienceScore, 
    CASE 
		WHEN ScienceScore >= 40 THEN 'Pass' 
        ELSE 'Fail' 
	END AS ScienceStatus 
FROM StudentScores;
