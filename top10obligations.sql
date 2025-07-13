SELECT
	a.agency_id as agency_id,
	a.reporting_agency_name, 
	SUM(f.obligations_incurred) as total_obligations
FROM
	agencies a
		join financials f
			on a.agency_id = f.agency_id
GROUP BY
	a.agency_id, a.reporting_agency_name
ORDER BY 
	total_obligations DESC
LIMIT 10