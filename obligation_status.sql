SELECT
	agency_id,
	function_id,
	account_id,
	obligations_incurred,
	CASE
		WHEN obligations_incurred < 10000000 THEN 'Low'
		WHEN obligations_incurred <= 250000000 THEN 'Medium'
		ELSE 'High'
	END AS obligation_status
FROM
	financials