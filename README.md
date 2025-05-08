# -HR-Analytics-SQL-Project
 HR Analytics SQL Project – Employee Performance &amp; Attrition Insights

## 📁 Project Overview

This project includes:

- **Relational Database Design**: `employees`, `performance_reviews`, and `attendance` tables  
- **SQL Data Analysis** using `JOIN`, `CASE`, `GROUP BY`, subqueries, and conditional aggregations  
- **HR Insights** such as department-wise attrition, impact of performance on attrition, and attendance metrics

---

## 🛠️ Tech Stack

- SQL (PostgreSQL)
- pgAdmin 

---

## 🧱 Database Schema

### 1. `employees`
| Column       | Type          | Description                      |
|--------------|---------------|----------------------------------|
| emp_id       | INT (PK)      | Employee ID                      |
| name         | VARCHAR       | Full name                        |
| age          | INT           | Age                              |
| gender       | CHAR(1)       | Gender (M/F)                     |
| department   | VARCHAR       | Department name                  |
| hire_date    | DATE          | Date of joining                  |
| salary       | DECIMAL       | Annual salary                    |
| attrition    | VARCHAR(5)    | Attrition status ("Yes"/"No")    |

### 2. `performance_reviews`
| Column       | Type          | Description                      |
|--------------|---------------|----------------------------------|
| review_id    | INT (PK)      | Review ID                        |
| emp_id       | INT (FK)      | Employee ID                      |
| review_date  | DATE          | Date of performance review       |
| rating       | DECIMAL(2,1)  | Rating out of 5                  |
| comments     | TEXT          | Reviewer feedback                |

### 3. `attendance`
| Column       | Type          | Description                      |
|--------------|---------------|----------------------------------|
| record_id    | INT (PK)      | Record ID                        |
| emp_id       | INT (FK)      | Employee ID                      |
| date         | DATE          | Date                             |
| status       | VARCHAR       | Attendance status                |

---

## 🔍 Key SQL Insights

✅ **Department-wise Attrition Rate**  
✅ **Performance vs Attrition Correlation**  
✅ **Attendance Analysis** (Avg. presence %)  
✅ **Identifying High-Risk Employees**  
✅ **Top Performers per Department**

