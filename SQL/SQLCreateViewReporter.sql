CREATE VIEW vReporter AS
SELECT (CASE
                 	WHEN pr.CustomerID IS NOT NUll THEN pr.CustomerID
                 	WHEN pr.DistributorID IS NOT NUll THEN pr.DistributorID
                 	WHEN pr.UserID IS NOT NULL THEN pr.UserID
                 	ELSE pr.OtherID
          	END) AS ReporterID,
          	(CASE
                 	WHEN pr.CustomerID IS NOT NUll THEN 'Customer'
                 	WHEN pr.DistributorID IS NOT NUll THEN 'Distributor'
                 	WHEN pr.UserID IS NOT NULL THEN 'User'
                 	ELSE 'Other'
          	END) AS ReporterType,
          	(CASE
                 	WHEN pr.CustomerID IS NOT NUll THEN (CustomerFirstName + ' ' + CustomerLastName)
                 	WHEN pr.DistributorID IS NOT NUll THEN DistributorName
                 	WHEN pr.UserID IS NOT NULL THEN (UserFirstName + ' ' + UserLastName)
                 	ELSE (OtherFirstName + ' ' + OtherLastName)
          	END) AS ReporterName
FROM ptblProblemReport pr
LEFT OUTER JOIN ptblCustomer cust
ON cust.CustomerID = pr.CustomerID
LEFT OUTER JOIN ptblDistributor dist
ON dist.DistributorID = pr.DistributorID
LEFT OUTER JOIN ptblUser u
ON u.UserID = pr.UserID
LEFT OUTER JOIN ptblOther other
ON other.OtherID = pr.OtherID;

