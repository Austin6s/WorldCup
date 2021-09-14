--Goals over time by top 10 goal-scoring countries
SELECT wc.team country, year, SUM(goals) goals
FROM worldcup wc
JOIN (
	SELECT team, SUM(goals)
	FROM worldcup
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 10) top10
ON wc.team = top10.team
GROUP BY 1, 2
ORDER BY 1, 2


--World cup overall attendance by year
SELECT year, home, SUM(attendance)
FROM worldcup
GROUP BY 1, 2
ORDER BY 1, 2

--All-time goals by country
SELECT team, SUM(goals) goals
FROM worldcup
GROUP BY 1
ORDER BY 2 DESC

--Number of finals appearances by country
SELECT team, COUNT(*) finals_appearances
FROM worldcup
WHERE stage = 'FINAL ROUND'
GROUP BY 1
ORDER BY 2 DESC
