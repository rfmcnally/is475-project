Create View vPRCount as
select m.ModelID,
   	   m.ModelDescription,
   	   Count(pr.ReportID) as CountofProblemReports,
   	   Count(tr.TestReportID) as CountofTestReports,
   	   ISNULL(Sum(Cast(pr.Injury as Int)), 0) as Injury,
   	   ISNULL(Convert(VarChar,Min(pr.ReportDate),101), 'No Report Date') as     EarliestReportDate,
   	   ISNULL(Convert(VarChar,Max(pr.ReportDate),101), 'No Report Date') as MostRecentReportDate
From ptblModel m
Left outer join ptblProduct p
on m.ModelID= p.ModelID
Left outer join ptblProblemReport pr
on p.SerialNumber= pr.SerialNumber
Left outer join ptblTestReport tr
on pr.ReportID = tr.ReportID  	
Group by m.ModelID, m.ModelDescription;