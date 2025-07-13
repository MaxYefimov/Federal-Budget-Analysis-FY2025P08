SELECT 
	CASE
		WHEN obligations_incurred < 10000000 THEN 'Low'
		WHEN obligations_incurred <= 250000000 THEN 'Medium'
		ELSE 'High'
	END AS obligation_status,
	COUNT(*)
FROM
	financials
GROUP BY
	obligation_status