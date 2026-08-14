/* Questino 7. Get the complete report of the Gross sales amount for the customer “Atliq
Exclusive” for each month. This analysis helps to get an idea of low and
high-performing months and take strategic decisions.
The final report contains these columns:
	- Month
	- Year
	- Gross sales Amount
*/
select * from fact_gross_price;  -- gross price pk - product_code
select * from fact_sales_monthly;  -- extract month from date pk -  customer_code, product_code
select * from dim_customer;  -- Atliq Exclusive  pk - customer_code

SELECT 
    MONTH(fsm.date) AS Months,
    YEAR(fsm.date) AS Years,
    ROUND(SUM(fsm.sold_quantity * fgp.gross_price) / 1000000,
            2) AS 'Gross Sales Amount (Mn)'
FROM
    dim_customer AS dc
        JOIN
    fact_sales_monthly AS fsm USING (customer_code)
        JOIN
    fact_gross_price AS fgp ON fgp.product_code = fsm.product_code
        AND fgp.fiscal_year = fsm.fiscal_year
WHERE
    dc.customer = 'Atliq Exclusive'
GROUP BY 1 , 2
ORDER BY 1 , 2;


