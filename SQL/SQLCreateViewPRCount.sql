CREATE VIEW vPRCount AS
SELECT m.ModelID,
   	   m.ModelDescription,
   	   Count(pr.ReportID) AS CountofProblemReports,
   	   Count(tr.TestReportID) AS CountofTestReports,
   	   ISNULL(Sum(Cast(pr.Injury AS Int)), 0) AS Injury,
   	   ISNULL(Convert(VarChar,Min(pr.ReportDate),101), 'No Report Date') AS EarliestReportDate,
   	   ISNULL(Convert(VarChar,Max(pr.ReportDate),101), 'No Report Date') AS MostRecentReportDate
FROM ptblModel m
LEFT OUTER JOIN ptblProduct p
ON m.ModelID= p.ModelID
LEFT OUTER JOIN ptblProblemReport pr
ON p.SerialNumber= pr.SerialNumber
LEFT OUTER JOIN ptblTestReport tr
ON pr.ReportID = tr.ReportID  	
GROUP BY m.ModelID, m.ModelDescription;
