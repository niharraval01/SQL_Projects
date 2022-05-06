 #Group2
 
SELECT round(Avg(MonthlyIncome),2) as Average_salary
FROM hr;

select count(Attrition) as `Attrition rate`, JobRole from hr
where MonthlyIncome < 6502.93
group by JobRole
order by `Attrition rate` desc
limit 1;