-- Sprawdzenie czy adresy e-mail mają poprawny format jeśli są obecne
SELECT primary_email
FROM {{ ref('customers') }}
WHERE primary_email IS NOT NULL AND primary_email NOT LIKE '%@%.%'
