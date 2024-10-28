--SQL PROJECT CODE

Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)

Insert into EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

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

select FirstName,LastName,Salary
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID=sal.EmployeeID
order by Salary Desc

select*
From EmployeeDemographics
where EmployeeID>'1003'and age>'30'

select JobTitle,avg(age)
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID=sal.EmployeeID
where JobTitle='Accountant'
group by JobTitle

select JobTitle,avg(Salary)
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID=sal.EmployeeID
where JobTitle='Salesman'
group by JobTitle

select*
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID=sal.EmployeeID

select Gender, count(Gender)as countgender
from EmployeeDemographics
where age>'31'
group by gender
order by gender

select*
from EmployeeDemographics
where FirstName in ('Jim','Michael')

select*
from EmployeeDemographics
where FirstName is not null


select*
from EmployeeDemographics
where firstname is null

select*
from EmployeeDemographics
where firstname like 'S%c%ott%'

select*
from EmployeeDemographics
where LastName like 'S%c%ott%'

select*
from EmployeeDemographics
where LastName like 'F%e%nder%'

select JobTitle,avg(Salary)
from EmployeeDemographics Emp
join EmployeeSalary sal
on emp.EmployeeID=sal.EmployeeID
where JobTitle='Salesman'
group by JobTitle

select*
From EmployeeDemographics
where EmployeeID>'1003'and age>'30'





Select*
From EmployeeDemographics
inner join EmployeeSalary
ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

Select max(salary),min(salary) 
from EmployeeSalary

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