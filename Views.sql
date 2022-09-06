CREATE VIEW MaharashtrianCustomers as SELECT customer_id, customer_name, phone_number, active_status FROM customer WHERE state_id = 1;

SELECT * FROM MaharashtrianCustomers;

CREATE VIEW SalesFromTelangana as SELECT customer.customer_id, sales.sales_id, sales.sales_amount FROM customer INNER JOIN sales ON sales.c_id = customer.customer_id WHERE customer.state_id = 6;

SELECT * FROM SalesFromTelangana;

CREATE VIEW BSNLSales as SELECT sales.sales_id, sales.sales_amount, sales.p_id, pack.a_id FROM sales INNER JOIN pack ON sales.p_id = pack.pack_id WHERE pack.a_id = 101;

SELECT * FROM BSNLSales;

CREATE VIEW OfflinePayments as SELECT customer.customer_id, payment.bill_id, payment.payment_type FROM customer INNER JOIN payment ON customer.customer_id = payment.c_id WHERE payment.payment_type = "Offline";

SELECT * FROM OfflinePayments;