-- Cleaning Stage

CREATE TABLE `wa_fn-usec_-hr-employee-attrition_backup`
LIKE `wa_fn-usec_-hr-employee-attrition`;

INSERT`wa_fn-usec_-hr-employee-attrition_backup`
SELECT * FROM `wa_fn-usec_-hr-employee-attrition`;

select * from `wa_fn-usec_-hr-employee-attrition_backup` ; 

select distinct Attrition from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct BusinessTravel from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct OverTime from `wa_fn-usec_-hr-employee-attrition_backup` ;
select distinct Department from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct EducationField from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct Gender from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct JobRole from `wa_fn-usec_-hr-employee-attrition_backup` ;

select distinct MaritalStatus from `wa_fn-usec_-hr-employee-attrition_backup` ;



WITH ranked AS (
    SELECT
        Age,
        NTILE(4) OVER (ORDER BY Age) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Age END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Age END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        Age,
        NTILE(4) OVER (ORDER BY Age) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Age END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Age END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE Age <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR Age >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        DistanceFromHome,
        NTILE(4) OVER (ORDER BY DistanceFromHome) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN DistanceFromHome END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN DistanceFromHome END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
         DistanceFromHome,
        NTILE(4) OVER (ORDER BY DistanceFromHome) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN DistanceFromHome END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN DistanceFromHome END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE DistanceFromHome <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR DistanceFromHome >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        Age,
        NTILE(4) OVER (ORDER BY Age) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Age END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Age END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        Age,
        NTILE(4) OVER (ORDER BY Age) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Age END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Age END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE Age <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR Age >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        Education,
        NTILE(4) OVER (ORDER BY Education) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Education END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Education END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        Education,
        NTILE(4) OVER (ORDER BY Education) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN Education END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN Education END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE Education <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR Education >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);






WITH ranked AS (
    SELECT
        EnvironmentSatisfaction,
        NTILE(4) OVER (ORDER BY EnvironmentSatisfaction) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN EnvironmentSatisfaction END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN EnvironmentSatisfaction END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        EnvironmentSatisfaction,
        NTILE(4) OVER (ORDER BY EnvironmentSatisfaction) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN EnvironmentSatisfaction END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN EnvironmentSatisfaction END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE EnvironmentSatisfaction <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR EnvironmentSatisfaction >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        HourlyRate,
        NTILE(4) OVER (ORDER BY HourlyRate) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN HourlyRate END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN HourlyRate END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        HourlyRate,
        NTILE(4) OVER (ORDER BY HourlyRate) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN HourlyRate END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN HourlyRate END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE HourlyRate <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR HourlyRate >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        JobInvolvement,
        NTILE(4) OVER (ORDER BY JobInvolvement) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobInvolvement END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobInvolvement END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        JobInvolvement,
        NTILE(4) OVER (ORDER BY JobInvolvement) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobInvolvement END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobInvolvement END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE JobInvolvement <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR JobInvolvement >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        JobLevel,
        NTILE(4) OVER (ORDER BY JobLevel) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobLevel END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobLevel END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        JobLevel,
        NTILE(4) OVER (ORDER BY JobLevel) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobLevel END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobLevel END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE JobLevel <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR JobLevel >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        JobSatisfaction,
        NTILE(4) OVER (ORDER BY JobSatisfaction) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobSatisfaction END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobSatisfaction END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        JobSatisfaction,
        NTILE(4) OVER (ORDER BY JobSatisfaction) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN JobSatisfaction END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN JobSatisfaction END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE JobSatisfaction <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR JobSatisfaction >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);





WITH ranked AS (
    SELECT
        MonthlyIncome,
        NTILE(4) OVER (ORDER BY MonthlyIncome) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN MonthlyIncome END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN MonthlyIncome END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        MonthlyIncome,
        NTILE(4) OVER (ORDER BY MonthlyIncome) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN MonthlyIncome END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN MonthlyIncome END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE MonthlyIncome <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR MonthlyIncome >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
);




WITH ranked AS (
    SELECT
        EmployeeNumber,
        MonthlyIncome,
        NTILE(4) OVER (ORDER BY MonthlyIncome) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN MonthlyIncome END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN MonthlyIncome END) AS Q3
    FROM ranked
),

outliers AS (
    SELECT EmployeeNumber
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
    WHERE MonthlyIncome <
    (
        SELECT Q1 - 1.5 * (Q3 - Q1)
        FROM quartiles
    )
    OR MonthlyIncome >
    (
        SELECT Q3 + 1.5 * (Q3 - Q1)
        FROM quartiles
    )
)

DELETE FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE EmployeeNumber IN (
    SELECT EmployeeNumber
    FROM outliers
);





WITH ranked AS (
    SELECT
        MonthlyRate,
        NTILE(4) OVER (ORDER BY MonthlyRate) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN MonthlyRate END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN MonthlyRate END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        MonthlyRate,
        NTILE(4) OVER (ORDER BY MonthlyRate) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN MonthlyRate END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN MonthlyRate END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE MonthlyRate <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR MonthlyRate >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
); 





WITH ranked AS (
    SELECT
        NumCompaniesWorked,
        NTILE(4) OVER (ORDER BY NumCompaniesWorked) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN NumCompaniesWorked END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN NumCompaniesWorked END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        NumCompaniesWorked,
        NTILE(4) OVER (ORDER BY NumCompaniesWorked) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN NumCompaniesWorked END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN NumCompaniesWorked END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE NumCompaniesWorked <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR NumCompaniesWorked >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
); 





WITH ranked AS (
    SELECT
        PercentSalaryHike,
        NTILE(4) OVER (ORDER BY PercentSalaryHike) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN PercentSalaryHike END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN PercentSalaryHike END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        PercentSalaryHike,
        NTILE(4) OVER (ORDER BY PercentSalaryHike) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN PercentSalaryHike END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN PercentSalaryHike END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE PercentSalaryHike <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR PercentSalaryHike >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
); 






WITH ranked AS (
    SELECT
        PerformanceRating,
        NTILE(4) OVER (ORDER BY PerformanceRating) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN PerformanceRating END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN PerformanceRating END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        PerformanceRating,
        NTILE(4) OVER (ORDER BY PerformanceRating) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN PerformanceRating END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN PerformanceRating END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE PerformanceRating <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR PerformanceRating >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
); 





WITH ranked AS (
    SELECT
        TotalWorkingYears,
        NTILE(4) OVER (ORDER BY TotalWorkingYears) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN TotalWorkingYears END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN TotalWorkingYears END) AS Q3
    FROM ranked
)

SELECT
    Q1,
    Q3,
    (Q3 - Q1) AS IQR
FROM quartiles;

WITH ranked AS (
    SELECT
        TotalWorkingYears,
        NTILE(4) OVER (ORDER BY TotalWorkingYears) AS quartile
    FROM `wa_fn-usec_-hr-employee-attrition_backup`
),

quartiles AS (
    SELECT
        MIN(CASE WHEN quartile = 1 THEN TotalWorkingYears END) AS Q1,
        MAX(CASE WHEN quartile = 3 THEN TotalWorkingYears END) AS Q3
    FROM ranked
)

SELECT *
FROM `wa_fn-usec_-hr-employee-attrition_backup`
WHERE TotalWorkingYears <
(
    SELECT Q1 - 1.5 * (Q3 - Q1)
    FROM quartiles
)
OR TotalWorkingYears >
(
    SELECT Q3 + 1.5 * (Q3 - Q1)
    FROM quartiles
); 

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Age IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Attrition IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE BusinessTravel IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE DailyRate IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Department IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE DistanceFromHome IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Education IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE EducationField IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE EmployeeCount IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE EmployeeNumber IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE EnvironmentSatisfaction IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Gender IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE HourlyRate IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE JobInvolvement IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE JobLevel IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE JobRole IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE JobSatisfaction IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE MaritalStatus IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE MonthlyIncome IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE MonthlyRate IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE NumCompaniesWorked IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE Over18 IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE OverTime IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE PercentSalaryHike IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE PerformanceRating IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE RelationshipSatisfaction IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE StandardHours IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE StockOptionLevel IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE TotalWorkingYears IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE TrainingTimesLastYear IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE WorkLifeBalance IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE YearsAtCompany IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE YearsInCurrentRole IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE YearsSinceLastPromotion IS NULL;

SELECT COUNT(*) FROM `wa_fn-usec_-hr-employee-attrition_backup` WHERE YearsWithCurrManager IS NULL;



SELECT 
    EmployeeNumber,
    COUNT(*) AS duplicate_count
FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;

-- EDA Stage

-- We have 16% Attrition Rate
SELECT 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM `wa_fn-usec_-hr-employee-attrition_backup`;

--  Avarage years at company = 6.5 year 
select avg(YearsAtCompany) from `wa_fn-usec_-hr-employee-attrition_backup` ;

-- Average years at company for attrited vs average years at company for non-attrited
select Attrition,  avg(YearsAtCompany) from`wa_fn-usec_-hr-employee-attrition_backup`
group by Attrition   ;

-- Attrition Rate for every Business Travel Type
SELECT 
    BusinessTravel,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY BusinessTravel;

-- Attrition Rate for every Department

SELECT 
    Department,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY Department;

select 
Department, 
avg(MonthlyIncome)
from `wa_fn-usec_-hr-employee-attrition_backup`
group by Department; 

select min(DistanceFromHome) , max(DistanceFromHome)  from  `wa_fn-usec_-hr-employee-attrition_backup` ;

-- Attrition Rate for every Distance segment 

SELECT 
    CASE 
        WHEN DistanceFromHome BETWEEN 1 AND 7 THEN '1-7 km'
        WHEN DistanceFromHome BETWEEN 7 AND 14 THEN '7-14 km'
        WHEN DistanceFromHome BETWEEN 14 AND 21 THEN '14-21 km'
        ELSE '21+ km'
    END AS distance_group,

    COUNT(*) AS total_employees,

    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,

    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
    
    AVG(MonthlyIncome)

FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY distance_group
ORDER BY attrition_rate desc;

 -- Attrition Rate & Avarage Monthly income for every Education Segment
SELECT Education,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) 
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by Education
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for every  Education- Field  Segment

SELECT EducationField,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by EducationField
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for every  Environment Satisfaction  Segment
 
SELECT EnvironmentSatisfaction,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by EnvironmentSatisfaction
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every  Gender
 
SELECT Gender,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by Gender
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Job Involvement
 
SELECT JobInvolvement,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by JobInvolvement
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Job Level
 
SELECT JobLevel,
COUNT(*) AS  total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by JobLevel
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Job Role

SELECT JobRole,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) , 
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by JobRole
order by attrition_rate desc ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Job Satisfaction

SELECT JobSatisfaction,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by JobSatisfaction;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Marital Status
 
SELECT MaritalStatus,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by MaritalStatus
order by attrition_rate desc ;

 -- Avarage Distance  for Every Marital Status

SELECT MaritalStatus, AVG(DistanceFromHome)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by MaritalStatus ;

 -- Attrition Rate & Avarage Monthly income  & Avarage Monthly Rate for Every Distance Group

SELECT 
    CASE 
        WHEN DistanceFromHome BETWEEN 1 AND 7 THEN '1-7 km'
        WHEN DistanceFromHome BETWEEN 7 AND 14 THEN '7-14 km'
        WHEN DistanceFromHome BETWEEN 14 AND 21 THEN '14-21 km'
        ELSE '21+ km'
    END AS distance_group,
    
    MaritalStatus,

    COUNT(*) AS total_employees,

    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,

    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
    
    AVG(MonthlyIncome)

FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY distance_group , MaritalStatus
ORDER BY attrition_rate desc;

SELECT CASE 
	WHEN NumCompaniesWorked BETWEEN 0 AND 3 THEN '1-3 YEAR'
    when NumCompaniesWorked BETWEEN 4 AND 6 THEN '4-6 YEAR'
    else '7-9 YEAR' 
    end as NumCompaniesWorked2,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by NumCompaniesWorked2
order by attrition_rate desc ;

SELECT OverTime,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY JobRole
order by overtime_rate desc ;

SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN OverTime = 'Yes' THEN 1 END) AS overtime_employees,
    COUNT(CASE WHEN OverTime = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS overtime_rate
FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY JobRole
order by overtime_rate desc ;

SELECT StockOptionLevel,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by StockOptionLevel 
order by attrition_rate desc ;


-- Attrition Rate for every age  
SELECT Age,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by Age 
order by attrition_rate desc ;

select avg(Age) as avg_age , JobRole from `wa_fn-usec_-hr-employee-attrition_backup`
group by JobRole 
order by avg_age ;

SELECT JobRole,
COUNT(*) AS total_employees,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate,
AVG(MonthlyIncome) ,
AVG (MonthlyRate)
FROM `wa_fn-usec_-hr-employee-attrition_backup`
group by JobRole 
order by attrition_rate desc ;

-- Attrition Rate for every Age Segment  
SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46-60'
    END AS age_segment,

    COUNT(*) AS total_employees,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS leavers,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate

FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY age_segment
ORDER BY age_segment;

SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46-60'
    END AS age_segment,

    COUNT(*) AS total_employees,
    COUNT(CASE WHEN OverTime = 'Yes' THEN 1 END) AS overtime_employees,
    COUNT(CASE WHEN OverTime = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS overtime_rate

FROM `wa_fn-usec_-hr-employee-attrition_backup`
GROUP BY age_segment
ORDER BY age_segment;

SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46-60'
    END AS age_segment, avg(EnvironmentSatisfaction) as satisfactionlevel , avg(RelationshipSatisfaction) as Relationship_Satisfaction
    from `wa_fn-usec_-hr-employee-attrition_backup` 
    group by age_segment
    order by Relationship_Satisfaction ;

