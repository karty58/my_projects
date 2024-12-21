SELECT `Country/Region`,
       Continent,
       TotalCases AS Total_cases,
       RANK() OVER (PARTITION BY Continent ORDER BY TotalCases DESC) AS rank_
FROM worldometer_data;
