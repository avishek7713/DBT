
{{ config(severity = 'warn')}}
SELECT
    violation_code,
    SUM(fee_usd) AS total_revenue_usd
FROM 
    {{ ref('silver_parking_violation_codes') }}
GROUP BY
    violation_code
ORDER BY
    NOT(total_revenue_usd >= 1)