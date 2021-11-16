-- New Products this Month

select
    parsedatetime(formatdatetime(PRODUCTS.CREATED_AT, 'yyyyMM'), 'yyyyMM') as month_,
    Count(PRODUCTS.ID)
FROM PRODUCTS
GROUP BY month_
ORDER BY month_
