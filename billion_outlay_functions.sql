SELECT
	b.function_id as function_id,
	b.budget_function,
	b.budget_subfunction,
	SUM(f.gross_outlay_amount) AS total_outlay_amount
FROM
	budget_functions b
		join financials f
			on b.function_id = f.function_id
GROUP BY
	b.function_id, budget_function, budget_subfunction
HAVING
	SUM(f.gross_outlay_amount) > 1000000000
ORDER BY
	total_outlay_amount DESC