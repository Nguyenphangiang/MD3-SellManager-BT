create database QuanLyBanHang;
use QuanLyBanHang;
create table customer(
    customerName varchar(50),
    customerID int primary key auto_increment,
    customerAge int
);
create table product(
    productID int primary key auto_increment,
    productName varchar(50),
    productPrice float
);
create table customer_order(
    customer_orderID int primary key auto_increment,
    customerID int,
    customer_orderDate datetime,
    customer_orderTotalPrice float,
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