SELECT 
    full_name AS Client_Name,
    COALESCE(national_id, 'ACTION_REQUIRED') AS ID_Status,
    CASE 
        WHEN national_id IS NOT NULL THEN 'Sensitive Data'
        ELSE 'Public Data'
    END AS Classification
FROM Client_PII_Inventory;