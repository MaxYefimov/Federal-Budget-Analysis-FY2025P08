SELECT
	agency_id,
	ROUND(SUM(gross_outlay_amount),2) as total_outlay_amount,
	ROUND(SUM(gross_outlay_amount) / SUM(total_budgetary_resources), 2) as efficiency_ratio
FROM
	financials
GROUP BY
	agency_id
HAVING
	SUM(total_budgetary_resources) < 1000000000
	AND
	SUM(gross_outlay_amount) / SUM(total_budgetary_resources) > 0.8
ORDER BY
	efficiency_ratio DESC
LIMIT
	10
