SELECT customer.first_name,customer.last_name,SUM(payment.amount) total_amount
FROM sakila.payment payment
left join sakila.customer customer 
on customer.customer_id = payment.customer_id
where customer.last_name like '%SCHWARZ%' AND customer.first_name like '%BRUCE%'