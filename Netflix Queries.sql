SELECT COUNT(DISTINCT(FULLGENRE))
FROM NETFLIX;

SELECT REALESEYEAR, 
COUNT(TITLES) AS TOTALMOVIES
FROM NETFLIX
group by Realeseyear
ORDER BY TOTALMOVIES DESC;


SELECT * FROM
NETFLIX;


SELECT count(titles)
from netflix
where categoery like 'Movie'
RATING , CATEGOERY,
COUNT(TITLES) AS TOTALSHOWS
FROM NETFLIX
WHERE RATING NOT IN ('[NULL]','R','66 min','84 min','74 min','TV-Y7-FV')
GROUP BY RATING,CATEGOERY
ORDER BY TOTALSHOWS DESC;

SELECT  realeseyear,
COUNT(TITLES) AS TOTALCATEGOERY
from netflix
where categoery like 'TV Show'
group by realeseyear
order by totalcategoery desc;

436+513

-- total directors acct to total movies they have made

SELECT DIRECTORS,
COUNT(TITLES) AS TOTAL
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY DIRECTORS
order by total
 desc ;

-- total directors acct to total movies they have made
SELECT DIRECTORS,
COUNT(TITLES) AS TOTAL
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY DIRECTORS
order by total
 desc ;


-- TOTAL CATEGOREY ACC TO COUNTRIES

SELECT COUNTRIES ,
COUNT(TITLES) AS TOTALSHOWSPERCOUNTRY
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY  COUNTRIES
ORDER BY TOTALSHOWSPERCOUNTRY DESC;


SELECT COUNT(DISTINCT(DIRECTORS))
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show';

-- duration movies

SELECT IDS, CATEGOERY, DURATIONS
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show'
ORDER BY DURATIONS DESC;

SELECT DURATIONS,
COUNT(DURATIONS)as MovieAcctoPermin
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie' and durations <> '[null]'
group by durations
order by MovieAcctoPermin desc;

select durations,titles
from netflix
where categoery like 'TV Show' and durations like '9 Seasons';


















