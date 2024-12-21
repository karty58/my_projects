SELECT `Country/Region`, TotalCases AS total_cases
FROM worldometer_data
WHERE TotalCases > (
    SELECT AVG(TotalCases) 
    FROM worldometer_data
    WHERE TotalCases IS NOT NULL
    ORDER BY TotalCases
    LIMIT 10 
);
