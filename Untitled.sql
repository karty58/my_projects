SELECT `Country/Region`,
       SUM(TotalCases) AS total_cases
FROM worldometer_data
GROUP BY `Country/Region`
HAVING SUM(TotalCases) > 1000000;