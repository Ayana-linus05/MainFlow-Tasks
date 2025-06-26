USE StudentManagement;
SELECT StudentID, Name, MathScore + ScienceScore + EnglishScore AS TotalScore, RANK() OVER (ORDER BY MathScore + ScienceScore + EnglishScore DESC) AS Ranks FROM Students;
SELECT StudentID, Name, MathScore, SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotal FROM Students;
SELECT StudentID, Name, MathScore + ScienceScore + EnglishScore AS TotalScore, LAG(MathScore + ScienceScore + EnglishScore) OVER (ORDER BY StudentID) AS PrevTotalScore,
 MathScore + ScienceScore + EnglishScore - LAG(MathScore + ScienceScore + EnglishScore) OVER (ORDER BY StudentID) AS DeltaFromPrev FROM Students;
 SELECT StudentID, MathScore, AVG(MathScore) OVER (ORDER BY StudentID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS AvgLast3Math FROM Students;
 SELECT StudentID, Name, MathScore + ScienceScore + EnglishScore AS TotalScore, PERCENT_RANK() OVER (ORDER BY MathScore + ScienceScore + EnglishScore) AS pct_rank, 
 CUME_DIST() OVER (ORDER BY MathScore + ScienceScore + EnglishScore) AS cum_dist FROM Students;
