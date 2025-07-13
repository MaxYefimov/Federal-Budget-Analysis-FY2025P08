SELECT
	b.budget_subfunction,
	ROUND(SUM(f.gross_outlay_amount),2) as total_outlay_amount,
	ROUND(SUM(f.total_budgetary_resources),2) as total_resources,
	ROUND(SUM(f.gross_outlay_amount),2) / ROUND(SUM(f.total_budgetary_resources),2) as overspend_ratio
FROM
	budget_functions b
		join financials f
			on b.function_id = f.function_id
GROUP BY
	b.budget_subfunction
HAVING
	ROUND(SUM(f.gross_outlay_amount),2) > ROUND(SUM(f.total_budgetary_resources),2)
ORDER BY
	ROUND(SUM(f.gross_outlay_amount),2) / ROUND(SUM(f.total_budgetary_resources),2) DESC
LIMIT
	10
