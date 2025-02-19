# 🌍 MySQL Assignment – World Database  

📌 This project contains SQL queries executed on the `world` database. The queries answer various geographical and demographic questions using MySQL techniques like **GROUP BY, LIMIT, Wildcards, JOINs and more to effectively query and return the desired data.**.  

---

## 🔧 **Tools Used**  

| **Technology** | **Logo** |  
|--------------|---------|  
| **MySQL** 🗄️ | ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white) |  

---


## 📂 **Queries & Applied Techniques**  

### 1️⃣ **Using `GROUP BY` to Count Cities in the USA**  
✅ **Objective**: Find the number of cities in the United States.  
✅ **Technique**: `GROUP BY` groups cities by country name.  

```sql
SELECT COUNT(ci.id) AS CityCount, c.Name  
FROM city AS ci  
JOIN country AS c ON ci.CountryCode = c.Code  
WHERE c.name = 'United States'  
GROUP BY c.Name;
```

🖼️ *Placeholder for Image:*  
`![GROUP BY Example](https://via.placeholder.com/600x300?text=GROUP+BY+Example)`

---

### 2️⃣ **Using `LIMIT` to Get Top Results**  
✅ **Objective**: Find the country with the **highest life expectancy**.  
✅ **Technique**: `ORDER BY` sorts results, and `LIMIT` selects the top entry.  

```sql
SELECT Name, LifeExpectancy  
FROM country  
ORDER BY LifeExpectancy DESC  
LIMIT 1;
```

🖼️ *Placeholder for Image:*  
`![LIMIT Example](https://via.placeholder.com/600x300?text=LIMIT+Example)`

---

### 3️⃣ **Using `LIKE` Wildcards to Filter Data**  
✅ **Objective**: Find **cities that contain 'New'** in their name.  
✅ **Technique**: `LIKE '%New%'` matches any city name containing 'New'.  

```sql
SELECT * FROM CITY  
WHERE Name LIKE '%New%';
```

🖼️ *Placeholder for Image:*  
`![Wildcard Example](https://via.placeholder.com/600x300?text=LIKE+Wildcard+Example)`

---

### 4️⃣ **Using `JOIN` to Connect Tables**  
✅ **Objective**: Retrieve the **capital of Spain** by joining `country` and `city` tables.  
✅ **Technique**: `JOIN` matches country capital IDs with city IDs.  

```sql
SELECT DISTINCT c.name, ci.name  
FROM country AS c  
JOIN city AS ci  
ON c.Capital = ci.id  
WHERE c.name = 'Spain';
```

🖼️ *Placeholder for Image:*  
`![JOIN Example](https://via.placeholder.com/600x300?text=JOIN+Example)`

---

## ⚠️ Challenges Faced & Solutions

🔸 Duplicate country names in results:

✔ Solution: Used DISTINCT to avoid duplicate entries in JOIN queries.

🔸 Sorting not working correctly for population density:

✔ Solution: Used ORDER BY Density ASC to correctly rank results.

🔸 Fetching a range of rows beyond the first few:

✔ Solution: Used LIMIT 10 OFFSET 30 to get rows 31-40 in ranking-based queries. 

---

## 🚀 **Lessons Learned**  

- **GROUP BY** helps in counting and aggregating data.  
- **LIMIT** retrieves top results efficiently.  
- **Wildcards (`LIKE`)** allow flexible search queries.  
- **JOINs** are crucial for linking relational tables.  

---

## 📚 **Resources**  

- 📖 [MySQL Documentation](https://dev.mysql.com/doc/)  
- 🏫 [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)  
- 📝 [SQL Practice Exercises](https://www.sql-practice.com/)  

