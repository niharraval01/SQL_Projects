
# A1 What proportion of our staff are leaving?
# Here in Attrition value (1) = Left the organization 

 use assignment;
select* from `hr analytics`
where Attrition = 1;

# A2 What is the average age of the employees in each department?

select Department , round(avg(Age),2) as Avg_Age from `hr analytics`
group by Department;

#A3 Which education field has the highest attrition rate for the employees with less than 5 
# years of work experience and monthly salary between 2000 and 4000 USD.

select EducationField, count(Attrition) as `attrition rate` , TotalWorkingYears, MonthlyIncome from `hr analytics`
where TotalWorkingYears <5 and MonthlyIncome between 2000 and 4000;

# A4 What is the average salary hike for the employees with work experience between 8 years to 10 years

SELECT TotalWorkingYears as Work_experience, avg(PercentSalaryHike) as Avg_Salary_Hike FROM `hr analytics`
WHERE TotalWorkingYears BETWEEN 8 AND 10
group by Work_experience
order by Work_experience;

# A5. Divided the whole data into two groups – Group1: people with monthly salary more than the_ 
#__average salary of all employees and people with monthly salary less than the average salary of_ 
#__all employees. For each group analysis the attrition rate in each Job Role. Find the Job role which_ 
#__has the highest attrition rate gap across the group. 
 
#Group1

#average salary
SELECT round(Avg(MonthlyIncome),2) as Average_salary
FROM `hr analytics`;

#For each group analysis the attrition rate in each Job Role.
select count(Attrition) as `Attrition rate`, JobRole from `hr analytics`
where MonthlyIncome > 6502.93
group by JobRole;

# Job role which has the highest attrition rate gap across the group.
select count(Attrition) as `Attrition rate`, JobRole from `hr analytics`
where MonthlyIncome > 6502.93
group by JobRole
order by `Attrition rate` desc
limit 1;



#Group2

 #average salary
SELECT round(Avg(MonthlyIncome),2) as Average_salary
FROM `hr analytics`;

#For each group analysis the attrition rate in each Job Role.
select count(Attrition) as `Attrition rate`, JobRole from `hr analytics`
where MonthlyIncome < 6502.93
group by JobRole;

# Job role which has the highest attrition rate gap across the group.
select count(Attrition) as `Attrition rate`, JobRole from `hr analytics`
where MonthlyIncome < 6502.93
group by JobRole
order by `Attrition rate` desc
limit 1;





