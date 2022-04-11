CREATE DATABASE Course
use Course
create table Students(
  Id int identity(1,1)Primary key,
  Name nvarchar(50)not null,
  Surname nvarchar(60)default 'XXX',
  Age int check(Age>=18)not null,
  Point float not null
)
 insert into Students (Name,Age , Point)
values ('Anar',21,70)
insert into Students (Name,Age , Point)
values ('Amaliya',22,90)
insert into Students (Name,Age , Point)
values ('Aslan',18,500)
insert into Students (Name,Age , Point)
values ('Amin',17,100)
insert into Students (Name,Age , Point)
values ('Amal',28,89)
insert into Students (Name,Surname,Age , Point)
values ('Anar','Qandayev',28,50)
insert into Students (Name,Surname,Age , Point)
values ('Aslan','Qasimov',18,50)
insert into Students (Name,Surname,Age , Point)
values ('Amin','Memmedov',38,50)
select*from Students 

select Name , Point from Students where Point>70 and Point<90
select * from Students ORDER BY Point ASC
select * from Students ORDER BY Point DESC
select Name , Surname from Students where Age<21
update Students set Point=80 where Id =1
select*from Students where Point>0 and Point<100
alter table Students
add AvaragePoint float
update Students set AvaragePoint=90.6 where Id =5
