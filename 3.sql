SELECT `Country/Region`, TotalCases, TotalDeaths
FROM worldometer_data
UNION ALL
SELECT `Country/Region`, confirmed AS total_cases, deaths AS total_deaths
FROM country_wise_latest;
