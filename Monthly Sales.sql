-- Are sales doing well? Group by category

select 
    {{snippet: date by month}}
    PRODUCTS.CATEGORY,
    SUM(ORDERS.TOTAL)
FROM ORDERS
JOIN PRODUCTS ON PRODUCTS.ID = ORDERS.PRODUCT_ID
GROUP BY month_, PRODUCTS.CATEGORY
ORDER BY month_, PRODUCTS.CATEGORY ASC;

