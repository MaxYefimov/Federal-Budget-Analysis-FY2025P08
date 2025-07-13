SELECT
	agency_id,
	COUNT(*),
	ROUND(AVG(gross_outlay_amount),2) as average_outlay_amount
FROM
	financials
GROUP BY
	agency_id
HAVING
	COUNT(*) > 10
	AND
	AVG(gross_outlay_amount) < 500000000
