--SQL PROJECT CODE

--who is the highest paid employee that is not michael

select EmployeeDemographics.EmployeeID,FirstName,LastName,Salary
from [SQL Tutorial].dbo.EmployeeDemographics
inner join [SQL Tutorial].dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
where FirstName<>'Michael'
order by Salary desc

--what is the average salary of a salesman

select JobTitle,avg(Salary)
from [SQL Tutorial].dbo.EmployeeDemographics
inner join [SQL Tutorial].dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
where JobTitle='Salesman'
group by JobTitle

--hr wanted to determine the age gap of employees

select FirstName,LastName,Age,
case
    when age>30 then 'middle age'
	when age between 27 and 30 then 'young'
	else 'baby'
end
from [SQL Tutorial].dbo.EmployeeDemographics
where age is not null
order by Age
--hr wanted to give a salary raise to every employee
select JobTitle, Salary,
case
    when JobTitle='salesman'then salary+(salary*.10)
	when JobTitle='accountant'then Salary+(salary*.05)
    when JobTitle='hr'then salary+(salary*.03)
    else Salary+(salary*.03)
end as SalaryAterRaise
from [SQL Tutorial].dbo.EmployeeDemographics Emp
inner join [SQL Tutorial].dbo.EmployeeSalary Sal
on Emp.EmployeeID=Sal.EmployeeID

--what is the average age of employees in the accounts department
select JobTitle,avg(age)
from [SQL Tutorial].dbo.EmployeeDemographics
inner join [SQL Tutorial].dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
where JobTitle='Accountant'
group by JobTitle

--how does gender varies across department
select JobTitle,Gender,count(gender)as count
from [SQL Tutorial].dbo.EmployeeDemographics
inner join [SQL Tutorial].dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
group by JobTitle,Gender
order by JobTitle,Gender