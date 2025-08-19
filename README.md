# 🎬 Netflix Dashboard (Power BI + SQL)

<p align="center">
  <img src="https://img.shields.io/badge/Tool-Power%20BI-yellow?style=for-the-badge&logo=Power%20BI" />
  <img src="https://img.shields.io/badge/Database-SQL-blue?style=for-the-badge&logo=MySQL" />
  <img src="https://img.shields.io/badge/Role-Aspiring%20Data%20Analyst-green?style=for-the-badge&logo=Tableau" />
</p>

---

## 🖤 Project Overview  
Hi 👋, I’m **Ibrahim Shakir – Aspiring Data Analyst**.  

This project is an **end-to-end analysis of Netflix data** using **SQL for data preparation** and **Power BI for dashboarding**.  
It highlights insights into **Movies, TV Shows, Genres, Ratings, Countries, and Directors**, giving a complete picture of Netflix’s content strategy.  

Both dashboards are displayed directly below 👇 so you can view them at a glance.  

---

## 📊 Dashboard 1 – Netflix Content Overview  

<p align="center">
  <img src="Dashboards.png" alt="Netflix Dashboard 1" width="850"/>
</p>

🔎 **Key Highlights**  
- **KPIs** → Total Titles (8764), Drama (3183), Comedy (2242), Crime (1020), Documentaries (857), Horror (431), Other Genres (3910).  
- **World Map** → Global Netflix distribution by country.  
- **Categories per Year** → Growth trend of movies/TV shows.  
- **Ratings Breakdown** → TV-MA (3190), TV-14 (2149), PG (286), etc.  
- **Movies vs TV Shows** → Movies (~6000+) dominate compared to TV Shows (~2000+).  

---

## 📊 Dashboard 2 – Country & Director Insights  

<p align="center">
  <img src="Dashboards2.png" alt="Netflix Dashboard 2" width="850"/>
</p>

🔎 **Key Highlights**  
- **Movies Per Year** → Peak releases between 2015–2020.  
- **TV Shows Per Year** → Big rise after 2010.  
- **Directors** → 4229 Movie Directors & 219 TV Show Directors.  
- **Top Content-Producing Countries**:  
  - 🎬 Movies → USA (2355), India (927), UK (381), Canada (187), France (148).  
  - 📺 TV Shows → USA (841), UK (246), Japan (173), South Korea (164), India (81).  

---

## 🛠️ Tools & Tech Stack  
- 🎨 **Power BI** → Dashboard design, visualization & insights  
- 🗄️ **SQL** → Data cleaning, filtering, aggregations  
- 🔍 **Business Intelligence** → KPIs, storytelling & decision insights  

---



## 🔎 Analysis Summary  

### 🗄️ SQL Work  
- Used **SELECT, GROUP BY, COUNT, DISTINCT** for summarizing data.  
- Applied **WHERE filters** to separate **Movies vs TV Shows**.  
- Excluded invalid/null ratings using **NOT IN** condition.  
- Aggregated data by **Year, Country, Directors, Duration**.  
- Extracted insights such as:  
  - Total unique genres 🎭  
  - Movies/TV Shows released per year 📅  
  - Ratings distribution ⭐  
  - Top countries producing content 🌍  
  - Number of directors 🎬  

---

### 🎨 Power BI Work  
- Created **KPI Cards** → Total Titles, Drama, Comedy, Crime, Documentaries, Horror.  
- Designed **World Map** → Netflix content distribution by country.  
- Built **Bar & Column Charts** → Content per year, Ratings distribution.  
- Used **Pie/Donut Charts** → Movies vs TV Shows ratio.  
- Added **Line Charts** → Trends of Movies & TV Shows across years.  
- Used **Tables** → Directors & Country-wise contribution.  
- Styled the dashboards in a **dark Netflix-inspired theme** for clarity.  

---

## 👨‍💻 Project By  
**Ibrahim Shakir** | *Aspiring Data Analyst*  




## 🗃️ SQL Queries & Insights  

### 🔹 1. Count Distinct Genres  
```sql
SELECT COUNT(DISTINCT(FULLGENRE))
FROM NETFLIX;
👉 Returns the total number of unique genres in the dataset.



🔹 2. Movies Per Year

SELECT REALESEYEAR, 
COUNT(TITLES) AS TOTALMOVIES
FROM NETFLIX
GROUP BY REALESEYEAR
ORDER BY TOTALMOVIES DESC;
👉 Shows the number of movies released each year, helping to analyze content trends over time.




🔹 3. Movies Count

SELECT COUNT(TITLES)
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie';
👉 Returns the total number of movies available on Netflix.




🔹 4. Ratings & Categories Distribution

SELECT RATING,
CATEGOERY,
 COUNT(TITLES) AS TOTALSHOWS
FROM NETFLIX
WHERE RATING NOT IN ('[NULL]','R','66 min','84 min','74 min','TV-Y7-FV')
GROUP BY RATING, CATEGOERY
ORDER BY TOTALSHOWS DESC;
👉 Gives the distribution of Movies & TV Shows across maturity ratings (TV-MA, TV-14, PG, etc.).




🔹 5. TV Shows Per Year

SELECT REALESEYEAR,
COUNT(TITLES) AS TOTALCATEGOERY
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show'
GROUP BY REALESEYEAR
ORDER BY TOTALCATEGOERY DESC;
👉 Shows the number of TV Shows released each year, useful for timeline analysis.




🔹 6. Directors by Movies

SELECT DIRECTORS,
COUNT(TITLES) AS TOTAL
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY DIRECTORS
ORDER BY TOTAL DESC;
👉 Returns the total number of movies directed by each director, sorted by highest contributors.




🔹 7. Movies Per Country

SELECT COUNTRIES,
COUNT(TITLES) AS TOTALSHOWSPERCOUNTRY
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY COUNTRIES
ORDER BY TOTALSHOWSPERCOUNTRY DESC;
👉 Shows the total number of movies produced per country, highlighting leading content-producing regions.




🔹 8. Unique TV Show Directors

SELECT COUNT(DISTINCT(DIRECTORS))
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show';
👉 Returns the number of unique directors who directed TV Shows on Netflix.




🔹 9. Movie Duration Distribution

SELECT DURATIONS,
COUNT(DURATIONS) AS MovieAcctoPermin
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie' 
  AND DURATIONS <> '[null]'
GROUP BY DURATIONS
ORDER BY MovieAcctoPermin DESC;
👉 Gives a distribution of movies by their duration (minutes), useful for runtime analysis.





