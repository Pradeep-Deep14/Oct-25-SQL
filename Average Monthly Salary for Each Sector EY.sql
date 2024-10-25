CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    company_id INT,
    transaction_date DATE,
    revenue DECIMAL(10, 2)
);

INSERT INTO Transactions (transaction_id, company_id, transaction_date, revenue) VALUES
(101, 1, '2020-01-15', 5000.00),
(102, 2, '2020-01-20', 8500.00),
(103, 1, '2020-02-10', 4500.00),
(104, 3, '2020-02-20', 9900.00),
(105, 2, '2020-02-25', 7500.00);


CREATE TABLE Sectors (
    company_id INT PRIMARY KEY,
    sector VARCHAR(50)
);

INSERT INTO Sectors (company_id, sector) VALUES
(1, 'Technology'),
(2, 'Healthcare'),
(3, 'Technology');


/*
Write a SQL query that calculates the average monthly revenue for each sector in the
year 2020.

The output should show the average revenue for each sector for every month,
allowing the company to see how each sector performed financially month by month

*/


--Month
--Sector
--Average Revenue

SELECT * FROM TRANSACTIONS
SELECT * FROM SECTORS
 
SELECT EXTRACT(MONTH FROM T.TRANSACTION_DATE) AS MONTH,
	   S.SECTOR AS SECTOR,
	   ROUND(AVG(T.REVENUE))AS AVERAGE_REVENUE
FROM TRANSACTIONS T
JOIN SECTORS S
ON T.COMPANY_ID=S.COMPANY_ID
WHERE EXTRACT(YEAR FROM T.TRANSACTION_DATE)=2020
GROUP BY 1,2
ORDER BY 1