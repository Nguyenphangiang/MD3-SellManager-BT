create database QuanLyBanHang;
use QuanLyBanHang;

create table customer(
    customerID int primary key auto_increment,
    customerName varchar(50),
    customerAge int

);
create table product(
    productID int primary key auto_increment,
    productName varchar(50),
    productPrice int
);
create table customer_order(
    customer_orderID int primary key auto_increment,
    customerID int,
    customer_orderDate datetime,
    customer_orderTotalPrice int,
    foreign key (customerID) references customer(customerID)
);
create table oderDetail(
    customer_orderID int,
    productID int,
    oderQuantity int,
    primary key (customer_orderID,productID),
    foreign key (customer_orderID) references customer_order(customer_orderID),
    foreign key (productID) references product(productID)
);
