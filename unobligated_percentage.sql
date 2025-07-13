SELECT 
	agency_id,
	function_id,
	account_id,
	unobligated_balance / total_budgetary_resources as unobligated_percentage
FROM
	financials
WHERE
	total_budgetary_resources != 0 
	AND
	unobligated_balance / total_budgetary_resources > 0.25