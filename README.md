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

## 🗃️ SQL Queries Used  

I used **SQL queries** for cleaning, transformations, and extracting insights before building Power BI dashboards.  

<details>
<summary>🔹 Count Genres</summary>

```sql
SELECT COUNT(DISTINCT(FULLGENRE))
FROM NETFLIX;
</details> <details> <summary>🔹 Movies Per Year</summary>
sql
Copy
Edit
SELECT REALESEYEAR, 
       COUNT(TITLES) AS TOTALMOVIES
FROM NETFLIX
GROUP BY REALESEYEAR
ORDER BY TOTALMOVIES DESC;
</details> <details> <summary>🔹 Movies vs TV Shows Count</summary>
sql
Copy
Edit
SELECT COUNT(TITLES)
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie';
</details> <details> <summary>🔹 Ratings & Categories Distribution</summary>
sql
Copy
Edit
SELECT RATING, 
       CATEGOERY,
       COUNT(TITLES) AS TOTALSHOWS
FROM NETFLIX
WHERE RATING NOT IN ('[NULL]','R','66 min','84 min','74 min','TV-Y7-FV')
GROUP BY RATING, CATEGOERY
ORDER BY TOTALSHOWS DESC;
</details> <details> <summary>🔹 TV Shows Per Year</summary>
sql
Copy
Edit
SELECT REALESEYEAR,
       COUNT(TITLES) AS TOTALCATEGOERY
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show'
GROUP BY REALESEYEAR
ORDER BY TOTALCATEGOERY DESC;
</details> <details> <summary>🔹 Directors by Movies</summary>
sql
Copy
Edit
SELECT DIRECTORS,
       COUNT(TITLES) AS TOTAL
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY DIRECTORS
ORDER BY TOTAL DESC;
</details> <details> <summary>🔹 Total Movies per Country</summary>
sql
Copy
Edit
SELECT COUNTRIES,
       COUNT(TITLES) AS TOTALSHOWSPERCOUNTRY
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie'
GROUP BY COUNTRIES
ORDER BY TOTALSHOWSPERCOUNTRY DESC;
</details> <details> <summary>🔹 Total TV Show Directors</summary>
sql
Copy
Edit
SELECT COUNT(DISTINCT(DIRECTORS))
FROM NETFLIX
WHERE CATEGOERY LIKE 'TV Show';
</details> <details> <summary>🔹 Movie Durations Distribution</summary>
sql
Copy
Edit
SELECT DURATIONS,
       COUNT(DURATIONS) AS MovieAcctoPermin
FROM NETFLIX
WHERE CATEGOERY LIKE 'Movie' 
  AND DURATIONS <> '[null]'
GROUP BY DURATIONS
ORDER BY MovieAcctoPermin DESC;
</details>
🚀 Future Scope
📌 Add Actor & Runtime analysis.

📌 More advanced filters for genre/country/year.

📌 Predictive analysis with ML integration.

<p align="center"> 👨‍💻 Created by <b>Ibrahim Shakir</b> | Aspiring Data Analyst </p> ```
