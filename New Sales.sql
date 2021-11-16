-- New Sales this Month

select
    parsedatetime(formatdatetime(ORDERS.CREATED_AT, 'yyyyMM'), 'yyyyMM') as month_,
    Count(ORDERS.ID)
FROM ORDERS
GROUP BY month_
ORDER BY month_
