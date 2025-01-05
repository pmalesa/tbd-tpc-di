-- Sprawdzenie czy klucz główny nie jest wartoscią NULL'ową
SELECT sk_account_id
FROM {{ ref('dim_account') }}
WHERE sk_account_id IS NULL
