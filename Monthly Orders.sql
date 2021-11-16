-- Count of orders across time

select
    parsedatetime(formatdatetime(CREATED_AT, 'yyMM'), 'yyMM') as month_,
    count(ID)
from ORDERS
GROUP BY month_
ORDER BY month_ ASC;

