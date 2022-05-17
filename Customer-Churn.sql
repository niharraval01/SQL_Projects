use assignment;
SELECT * FROM assignment.`customer-churn`;

###Question 1
select Gender, round(avg(Monthlycharges),2) as Average_Monthly_charges from `customer-churn`
group by Gender;

###Question 2
select Gender, max(Monthlycharges) as Max_Monthly_charges, max(TotalCharges) as Max_total_charges from `customer-churn`
group by Gender;

###Question 3
select Gender, min(Monthlycharges) as Min_Monthly_charges, min(TotalCharges) as Min_total_charges from `customer-churn`
group by Gender;

###Question 4
select Gender, (
sum(Monthlycharges)/sum(Totalcharges))*100 as Percentage from `customer-churn`
group by Gender;

select Gender, count(churn) as Working from `customer-churn`
where churn = 'No'
group by Gender;
select Gender, count(churn) as Resigned from `customer-churn`
where churn = 'YES'
group by Gender;
