CREATE TABLE state (
state_id int primary key,
s_name varchar(255)
);

CREATE TABLE customer (
customer_id int primary key,
phone_number varchar(13),
customer_name varchar(255),
state_id int references state(state_id),
first_active date,
active_status int CHECK (active_status >= 0 and active_status <= 1) 
);

CREATE TABLE agency (
agency_id int primary key,
agency_name varchar(12)
);

CREATE TABLE pack (
pack_id int primary key,
pack_amount int NOT NULL,
pack_duration int NOT NULL,
a_id int references agency(agency_id)
);

CREATE TABLE sales (
sales_id int primary key,
c_id int references customer(customer_id),
p_id int references pack(pack_id),
sales_amount int
);

CREATE TABLE payment (
bill_id int primary key,
a_id int references agency(agency_id),
c_id int references customer(customer_id),
payment_type varchar(10),
payment_date date
);

