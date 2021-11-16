-- New Customers this Month

select
    parsedatetime(formatdatetime(PEOPLE.CREATED_AT, 'yyyyMM'), 'yyyyMM') as month_,
    Count(PEOPLE.ID)
FROM PEOPLE
GROUP BY month_
ORDER BY month_
