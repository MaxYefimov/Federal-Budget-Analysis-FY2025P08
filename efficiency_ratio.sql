SELECT
	account_id,
	gross_outlay_amount,
	total_budgetary_resources,
	SUM(gross_outlay_amount) / SUM(total_budgetary_resources) as efficiency_ratio
FROM
	financials
GROUP BY
	account_id
HAVING
	total_budgetary_resources != 0
	AND
	SUM(gross_outlay_amount) / SUM(total_budgetary_resources) > 0
ORDER BY
	efficiency_ratio DESC
LIMIT 10