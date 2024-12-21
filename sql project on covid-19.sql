SELECT `Country/Region`, 
       SUM(TotalCases) AS total_cases, 
       SUM(TotalDeaths) AS total_deaths
FROM worldometer_data
GROUP BY `Country/Region`
ORDER BY total_cases DESC
LIMIT 15;
