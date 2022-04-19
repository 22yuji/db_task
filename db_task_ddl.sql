--1
CREATE TABLE shop
(
    shop_id int primary key,
    shop_name varchar(30),
    shop_add varchar(50),
    shop_tel varchar(20)
);

--2
CREATE TABLE emp
(
    emp_id int primary key,
    shop_id int not null references shop(shop_id),
    emp_name varchar(30)
);

--3
CREATE TABLE tax
(
    tax_id int primary key,
    tax_rate decimal
);

--4
CREATE TABLE payment
(
    payment_id int primary key,
    payment_name varchar(20)
);

--5
CREATE TABLE goods
(
    goods_id int primary key,
    goods_name varchar(50),
    goods_price decimal not null,
    tax_id int not null references tax(tax_id)
);

--6
CREATE TABLE receipt
(
    receipt_id int primary key,
    shop_id int not null references shop(shop_id),
    order_date date,
    order_time time,
    register_no int,
    emp_id int not null references emp(emp_id)
);

--7
CREATE TABLE detail
(
    detail_id int primary key,
    receipt_id int not null references receipt(receipt_id),
    goods_id int references goods(goods_id),
    buy_quan decimal not null,
    discount decimal,
    amount decimal,
    payment_id int not null references payment(payment_id),
    slip_number varchar(30)
);