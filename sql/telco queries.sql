use telco;

SELECT * 
FROM customers;

# Gender is about equal
SELECT distinct(gender),
		count(gender)
FROM customers
GROUP BY gender;

# There is more customer retention than churn
SELECT distinct(Churn),
		count(Churn) as 'count'
FROM customers
GROUP BY Churn;

# Top 10 customers by TotalCharges
SELECT customerID,
		MonthlyCharges,
        TotalCharges
FROM customers
ORDER BY TotalCharges DESC
LIMIT 10;

# top 10 customers mostly have extras and only 1 has Churned
SELECT customerID,
		PhoneService,
		MultipleLines,
        InternetService,
		OnlineSecurity,
        OnlineBackup,
        DeviceProtection,
        TechSupport,
        StreamingTV,
        StreamingMovies,
        Contract,
        TotalCharges,
        Churn
FROM customers
ORDER BY TotalCharges DESC
LIMIT 10