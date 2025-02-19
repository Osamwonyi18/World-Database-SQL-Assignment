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


 
![Q1](https://github.com/user-attachments/assets/cfea8528-c38f-4527-af54-733574a6a3cc)


---

### 2️⃣ **Using `LIMIT` to Get Top Results**  
✅ **Objective**: Find the country with the **highest life expectancy**.  
✅ **Technique**: `ORDER BY` sorts results, and `LIMIT` selects the top entry.  

![Q2](https://github.com/user-attachments/assets/a844b51a-77c5-49e0-ab20-3db65ced4e4c)


---

### 3️⃣ **Using `LIKE` Wildcards to Filter Data**  
✅ **Objective**: Find **cities that contain 'New'** in their name.  
✅ **Technique**: `LIKE '%New%'` matches any city name containing 'New'.  

![Q3](https://github.com/user-attachments/assets/ee2b3ccc-8c18-4a3c-9342-46e5e80f06ce)


---

### 4️⃣ **Using `JOIN` to Connect Tables**  
✅ **Objective**: Retrieve the **capital of Spain** by joining `country` and `city` tables.  
✅ **Technique**: `JOIN` matches country capital IDs with city IDs.  

![Q13](https://github.com/user-attachments/assets/a0993abe-cbbc-4445-adb1-c8b33099b0c7)


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

