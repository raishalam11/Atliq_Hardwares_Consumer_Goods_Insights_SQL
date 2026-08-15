/*
Question 8. In which quarter of 2020, got the maximum total_sold_quantity? The final
output contains these fields sorted by the total_sold_quantity,
Quarter
total_sold_quantity
*/

WITH CTE1 AS (
    SELECT 
        MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) AS fiscal_month,
        sold_quantity
    FROM fact_sales_monthly
    WHERE fiscal_year = 2020
)

SELECT
    CASE
        WHEN fiscal_month BETWEEN 1 AND 3 THEN 'Q1'
        WHEN fiscal_month BETWEEN 4 AND 6 THEN 'Q2'
        WHEN fiscal_month BETWEEN 7 AND 9 THEN 'Q3'
        ELSE 'Q4'
    END AS quarter,
    SUM(sold_quantity) AS total_sold_quantity
FROM CTE1
GROUP BY quarter
ORDER BY total_sold_quantity DESC;