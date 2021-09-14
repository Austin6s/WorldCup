--Country with most world cup goals
SELECT team country, SUM(goals)
FROM worldcup
GROUP BY 1
ORDER BY 2 DESC

--World Cup hosts
SELECT year, home
FROM worldcup
GROUP BY 1, 2
ORDER BY 1

--Country goals by year
SELECT team, year, SUM(goals)
FROM worldcup
GROUP BY 1, 2
ORDER BY 1, 2

--World cup overall attendance by year
SELECT year, home, SUM(attendance)
FROM worldcup
GROUP BY 1, 2
ORDER BY 1, 2
