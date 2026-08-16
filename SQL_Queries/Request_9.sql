/*
Question 9. Which channel helped to bring more gross sales in the fiscal year 2021
and the percentage of contribution? The final output contains these fields,
	- channel
	- gross_sales_mln
	- percentage
*/

WITH cte_gross_sales AS (
    SELECT
        dc.channel,
        SUM(fgp.gross_price * fsm.sold_quantity) / 1000000 AS gross_sales_mln
    FROM dim_customer AS dc
    INNER JOIN fact_sales_monthly AS fsm
        USING (customer_code)
    INNER JOIN fact_gross_price AS fgp
        ON fgp.product_code = fsm.product_code
        AND fgp.fiscal_year = fsm.fiscal_year
    WHERE fsm.fiscal_year = 2021
    GROUP BY
        dc.channel
)

SELECT
    channel,
    ROUND(gross_sales_mln, 2) AS gross_sales_mln,
    ROUND(
        gross_sales_mln * 100
        / (SELECT SUM(gross_sales_mln) FROM cte_gross_sales),
        2
    ) AS percentage
FROM cte_gross_sales
ORDER BY
    gross_sales_mln DESC;

