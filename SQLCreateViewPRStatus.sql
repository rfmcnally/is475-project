CREATE VIEW vPRStatus AS
SELECT pr.ReportID,
          	COUNT(tr.TestReportID) AS TestCount,
          	SUM(CAST(tr.TestComplete AS INT)) AS CompletedStatus,
          	(CASE WHEN SUM(CAST(tr.TestComplete AS INT)) > 0
                 	THEN 'Completed'
                 	ELSE (CASE WHEN COUNT(tr.TestReportID) > 0
                              	THEN 'In Testing'
                              	ELSE 'Testing Not Started'
                              	END)
          	END) AS ProblemReportStatus
FROM ptblProblemReport pr
LEFT OUTER JOIN ptblTestReport tr
ON pr.ReportID = tr.ReportID
GROUP BY pr.ReportID;