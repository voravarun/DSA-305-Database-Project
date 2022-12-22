--Find name of the customers who pay with the credit card--
select cus_id, f_name ||' '||l_name as "Customer's Name", order_id,
       pay_method, card_type, card_num
from orders 
 inner join credit_card using(order_id)
 inner join users using(cus_id);

--Find order id and name of the customer who already get the product in Bangkok 
select f_name, l_name, order_id, delivery_status, ship_rate
from delivery 
 inner join users using(cus_id)
 inner join deliverh using(delivery_id)
where ship_rate = 'BKK' and delivery_status = 'Delivered';

--Find the favourite product and product detail that the customer alredy buy--
select b.cus_id, o.pro_id as oder_id, f.pro_id as pro_id, p.pro_name, p.pro_brand, p.pro_details
from buying_history b 
  inner join order_item o 
    on b.order_id = o.order_id
  inner join favourite_product f 
    on o.pro_id = f.pro_id
  inner join products p
    on o.pro_id = p.pro_id
where b.cus_id = f.cus_id
order by b.cus_id;

--Find total payment to make a delivery for each order in Bangkok-- 
select b.cus_id, b.order_id, dh.ship_rate, bkk_pro_weight, bkk_weight_price + total as "Total Payment"
from buying_history b
  inner join delivery d
    on b.order_id = d.order_id
  inner join deliverh dh
    on d.delivery_id = dh.delivery_id
  inner join bkk_shipping_rate bk
    on bk.delivery_id = dh.delivery_id; 