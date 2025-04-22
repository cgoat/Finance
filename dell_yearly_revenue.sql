-- Query to find the latest yearly revenue for Dell Technologies Inc.
SELECT 
    CAST(n.ddate AS TEXT) AS "Date",
    n.value/1000000 AS "Revenue ($ millions)",
    n.uom AS "Currency",
    s.fy AS "Fiscal Year"
FROM num n
JOIN tag t ON n.tag = t.tag
JOIN sub s ON n.adsh = s.adsh
WHERE 
    s.cik = '1571996' -- Dell Technologies Inc.
    AND n.tag IN ('Revenues', 'Revenue', 'SalesRevenueNet')
    AND n.qtrs = 4 -- Annual data
ORDER BY n.ddate DESC
LIMIT 1;