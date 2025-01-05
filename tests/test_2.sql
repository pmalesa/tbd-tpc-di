-- Sprawdzenie czy klucze główne są unikatowe
SELECT sk_customer_id, COUNT(*) AS count
FROM {{ ref('dim_customer') }}
GROUP BY sk_customer_id
HAVING count > 1
