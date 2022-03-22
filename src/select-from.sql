select customer_orderID,customer_orderDate,customer_orderTotalPrice from customer_order;
select customerName,p.productName from customer
    join customer_order co on customer.customerID = co.customerID
    join oderdetail o on co.customer_orderID = o.customer_orderID
    join product p on p.productID = o.productID;
select * from customer
    join customer_order co on customer.customerID = co.customerID
    join oderdetail o on co.customer_orderID = o.customer_orderID
    join product p on p.productID = o.productID;
select * from customer
where not exists(select * from customer_order
    where customer.customerID = customer_order.customerID);
select c.customer_orderID,c.customer_orderDate,sum(od.oderQuantity * p.productPrice)
from customer_order c
join oderdetail od on c.customer_orderID = od.customer_orderID
join product p on p.productID = od.productID
group by c.customer_orderID, c.customer_orderDate;