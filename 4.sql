WITH DeathRate AS (
    SELECT `Country/Region`,
           TotalCases ,
           TotalDeaths,
           ROUND((TotalDeaths / NULLIF(TotalCases, 0)) * 100, 2) AS death_rate
    FROM worldometer_data
)
SELECT `Country/Region`,
           TotalCases ,
           TotalDeaths,
           death_rate
FROM DeathRate
ORDER BY death_rate DESC
LIMIT 5;
