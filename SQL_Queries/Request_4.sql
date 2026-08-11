/*
Question 4. Follow-up: Which segment had the most increase in unique products in
2021 vs 2020? The final output contains these fields,
 - segment
 - product_count_2020
 - product_count_2021
 - difference
*/

        
SELECT 
    dp.segment,
    COUNT(DISTINCT CASE WHEN fiscal_year = 2021 THEN fsm.product_code END) AS unique_products_2021,
    COUNT(DISTINCT CASE WHEN fiscal_year = 2020 THEN fsm.product_code END) AS unique_products_2020,
    COUNT(DISTINCT CASE WHEN fiscal_year = 2021 THEN fsm.product_code END) - COUNT(DISTINCT CASE WHEN fiscal_year = 2020 THEN fsm.product_code END) AS Difference
FROM
    dim_product AS dp
        LEFT JOIN
    fact_sales_monthly AS fsm ON dp.product_code = fsm.product_code
GROUP BY dp.segment
ORDER BY Difference DESC;

