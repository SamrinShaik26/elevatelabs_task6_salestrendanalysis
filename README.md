# elevatelabs_task6_salestrendanalysis
# Task 6 – Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze **monthly revenue** and **order volume** from the `orders` dataset using MySQL, and identify sales trends over time.

---

## 🗂 Dataset
- **File name:** `task6db.csv`
- **Columns used:**
  - `order_date` – Date of the order
  - `amount` – Total value of the order
  - `product_id` – Product code
  - `order_id` – Unique order identifier
  - `Quantity` – Number of units ordered
  - `CustomerID` – Customer identifier
  - `UnitPrice` – Price per unit
  - `Country` – Country of the order

If the dataset is too large to include, download it from the provided task files.

---

## ⚙️ Tools Used
- **MySQL** (Workbench & CLI)
- **GitHub** for version control
- **CSV file import** using `LOAD DATA INFILE`

---

## 🛠 Steps Performed

### 1. Created Database & Table
```sql
CREATE DATABASE task6;
USE task6;

CREATE TABLE orders (
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(50),
    order_id VARCHAR(50),
    Quantity INT,
    CustomerID INT,
    UnitPrice DECIMAL(10,2),
    Country VARCHAR(50)
);

