create database ksrtc;
use ksrtc;

create table adminlogin(
userid varchar(100) not null,
password varchar(100) not null);

create table emplogin(
empid varchar(100) not null,
emppassword varchar(100) not null);

create table customerlogin(
customerid varchar(100) not null,
customerpassword varchar(100) not null);

create table admin(
adminid varchar(100) references adminlogin(userid),
adminname varchar(100) not null,
adminadd varchar(100) not null,
addharnum bigint not null,
departmentname varchar(100) not null);


create table emp(
empid varchar(100)  references emplogin(empid),
empname varchar(100) not null,
emprole varchar(100) not null,
empadd varchar(100) not null,
empphonenum bigint not null,
empaddharnum bigint not null);

create table customer(
customerid varchar(100) references customerlogin(customerid),
customername varchar(100) not null,
customeradd varchar(100) not null,
customeraddharnum bigint not null,
customerphonenum bigint not null);
 
 
 select * from adminlogin;
 select * from emplogin;
 select * from customerlogin;
 select * from admin;
 select * from emp;
 select * from customer;
 