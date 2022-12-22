--Users--
insert all
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (001, 'Nancy', 'Robertson',0885236947,'Nancy@gmail.com','Nancy','001','88 Worachak Road Samphanthawong Bangkok',10100)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (002, 'Steven', 'King', 0845123645,'Steven@gmail.com','Steven','002',
          '1039/1 Soi Saladaeng 1 Rama 4 Road Silom Bangrak Bangkok',10500)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (003, 'David', 'Austin', 0963145252,'David@gmail.com','David','003','123 Talard Boh Beh Klongmahanart Bangkok',10200)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (004, 'Luis', 'Sciarra', 0845223654,'Luis@gmail.com','Luis','004',
          '3211/49 Soi Ladprao 101 Ladprao Road Klongchan, Bangkapi 2',10240)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (005, 'Adam', 'Fripp', 0947748785,'Adam@gmail.com','Adam','005','705/55 Soi Ladprao 5/1 Chatuchak Bangkok',10900)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (006, 'Alberto', 'Errazuriz', 0865231147,'Alberto@gmail.com','Alberto',
          '006','45/64 Soi Srivicharn Prachachuen Bang Sue Bang Sue Nonthaburi',10800)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (007, 'William', 'Smith' ,0885523663,'William@gmail.com','William','007',
          '528 Moo 2, Banphaprakan Road Mueang Chiang Rai Chiang Rai',11130)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (008, 'Kimberely', 'Grant', 0933001142,'Kimberely@gmail.com',
          'Kimberely','008','195/197 Ban Tanawan, Moo 8, Tambon Sanpheeseu Amphur Muang, Chiang Mai',50300)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (009, 'Julia', 'Dellinger', 0802001254,'Julia@gmail.com','Julia','009',
          '158/1 Moo 3 Hangdong-Samoeng Road Banpong, Hangdong Chiangmai',50230)
  into users (cus_id,f_name,l_name,phone_num,cus_email,username,password,cus_addr,cus_post_code) 
  values (010, 'Pat', 'Hartstein', 0878411473,'Pat@gmail.com','Pat','010','625 Wongsawang Road Bangsua Bangsu Bangkok',10800)
select * from dual;  
--Products--
insert all
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15301,'Moccona Espresso','Coffee','Moccona Coffee selected from the finest quality coffee beans',177,'Moccona',0.43)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15402,'Green Baygon','insecticide','Effectively get rid of infested insects Continuous effect for 24 hours','105',
          'Baygon',0.5)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15503,'headandshoulder','Shampoo','Helps the scalp and clean',179,'head and shoulder',0.6) 
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15504,'Sunsilk Dry Hair','Shampoo','Shampoo Sunsilk formula revitalizes dry and damaged hair',139,'Sunsilk',0.53)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15605,'Colgate(2ps)','Toothpaste','Helps prevent tooth decay effectively, cool and refreshing',99,'Colgate',0.33)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15606,'Salz Toothpaste(6ps)','Toothpaste','Toothpaste Salt Salt Salty But Dee Fresh formula Clean breath',210,
          'Saltz',0.68)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15707,'Doi Kham Honey','honey','Made from 100% honey',185,'Doi Kham',0.77)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15808,'Haier washing machine','washing machine','Haier automatic top loading washing machine',7990,'Haier',46)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15909,'Haier refrigerator','refrigerator','Haier 1 door refrigerator Muse series model HR-CEQ18',5590,'Haier',36.5)
  into products (pro_id,pro_name,pro_type,pro_details,pro_price,pro_brand,pro_weight)
  values (15910,'Worldtech refrigerator','refrigerator','Worldtech Mini Bar Refrigerator Size 1.7',3169,'Worldtech',15)
select * from dual;
--Member Point--
insert all
  into member_point (cus_id ,cus_point,exp_point)
  values(001,115,to_timestamp('2022-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(002,205,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(003,31,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(004,20,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(005,415,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(006,203,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(007,115,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(008,60,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(009,120,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into member_point (cus_id ,cus_point,exp_point)
  values(010,200,to_timestamp('2021-12-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
select * from dual;
--Stock--
insert all
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25301,15301,130,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25402,15402,70,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25503,15503,40,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25504,15504,65,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25605,15605,0,'Sold Out')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25606,15606,35,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25707,15707,42,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25808,15808,10,'Available')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25909,15909,0,'Sold Out')
  into stock (stock_id ,pro_id ,stock_num,stock_status)
  values (25910,15910,35,'Available')
select * from dual;
--Outlet
insert all
  into outlet (pro_id ,outlet_disrate,outlet_price)
  values(15301,0.2,141.6)
  into outlet (pro_id ,outlet_disrate,outlet_price)
  values(15402,0.15,89.25)
  into outlet (pro_id ,outlet_disrate,outlet_price)
  values(15503,0.3,125.3)
  into outlet (pro_id ,outlet_disrate,outlet_price)
  values(15504,0.2,111.2)
select * from dual;
--flash_sale
insert all
  into flash_sale (pro_id ,start_date,end_date,fs_disrate,fs_price)
  values(15606,to_timestamp('2021-10-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_timestamp('2021-10-20 12:00:00',
         'YYYY-MM-DD HH24:MI:SS'),0.5,105)
  into flash_sale (pro_id ,start_date,end_date,fs_disrate,fs_price)
  values(15707,to_timestamp('2021-10-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_timestamp('2021-10-20 12:00:00',
         'YYYY-MM-DD HH24:MI:SS'),0.3,129.5)
  into flash_sale (pro_id ,start_date,end_date,fs_disrate,fs_price)
  values(15808,to_timestamp('2021-10-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_timestamp('2021-10-20 12:00:00',
         'YYYY-MM-DD HH24:MI:SS'),0.5,3995)
select * from dual;

--Stores--
insert all
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1401,'100 Worachak Rd, Wat Thepsirin, Pom Prap Sattru Phai',10100,'Bangkok',091-226-671)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1402,'1 8-9 Sala Daeng 1 Alley, Silom, Bang Rak',10500,'Bangkok',091-002-0793)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1403,'34 Chakrabongse Rd, Talat Yot, Phra Nakhon',10200,'Bangkok',091-002-8555)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1404,'31 Soi Ramkhamhaeng 24, Hua Mak, Bang Kapi District',10240,'Bangkok',091-002-3135)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1405,'1170/4 Phahonyothin Rd, Chom Phon, Chatuchak',10900,'Bangkok',091-002-3197)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1506,'Wong Sawang Rd, Wong Sawang, Bang Sue',10800,'Bangkok',02-711-7744)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1607,'Uttarakit, Wiang, Mueang Chiang Rai District',57000,'Chiang Rai',091-001-0058)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1708,'Tambon Chang Phueak, Mueang Chiang Mai District',50300,'Chiang Mai',091-002-9277)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1709,'Hang Dong, Hang Dong District',50230,' Chiang Mai',091-002-8110)
  into stores (store_id,store_addr,store_post_code,store_city,store_phone_num)
  values (1410,'1405/12 Wong Sawang, Bang Sue',10800,'Bangkok',091-001-2153)
select * from dual;  
---Orders--  
insert all
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15211,001,'TW','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15212,002,'TW','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15213,003,'CC','Success','Awaiting pickup')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15214,004,'CC','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15215,005,'CS','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15216,006,'CS','Pending','Created')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15217,007,'TW','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15218,008,'TW','Success','Delivered')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15219,009,'CS','Pending','Created')
  into orders (order_id,cus_id,pay_method,payment_status,delivery_status)
  values(15220,010,'TW','Success','Created')
select * from dual;  
--favourite_Product
insert all
  into favourite_Product (cus_id,pro_id)
  values (001,15301)
  into favourite_Product (cus_id,pro_id)
  values (001,15504)
  into favourite_Product (cus_id,pro_id)
  values (002,15910)
  into favourite_Product (cus_id,pro_id)
  values (005,15808)
  into favourite_Product (cus_id,pro_id)
  values (006,15503)
  into favourite_Product (cus_id,pro_id)
  values (006,15707)
  into favourite_Product (cus_id,pro_id)
  values (007,15605)
  into favourite_Product (cus_id,pro_id)
  values (009,15402)
  into favourite_Product (cus_id,pro_id)
  values (009,15910)
  into favourite_Product (cus_id,pro_id)
  values (010,15909)
select * from dual;  
--order_item
insert all
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15211,15301,1,141.6,0,to_timestamp('2021-10-2 9:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15211,15606,1,105,0,to_timestamp('2021-10-2 9:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15211,15910,1,3169,0,to_timestamp('2021-10-2 9:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15212,15707,2,84,0,to_timestamp('2021-10-9 20:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15212,15808,1,3995,0,to_timestamp('2021-10-9 20:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15213,15910,1,3169,0,to_timestamp('2021-10-10 10:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15214,15503,2,150.6,0,to_timestamp('2021-10-3 05:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15215,15504,2,222.4,0,to_timestamp('2021-10-1 03:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15215,15606,1,105,0,to_timestamp('2021-10-1 03:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15216,15301,1,141.6,0,to_timestamp('2021-10-10 16:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15217,15605,1,99,0,to_timestamp('2021-10-5 11:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15218,15707,1,129.5,0,to_timestamp('2021-10-6 23:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15219,15504,1,111.2,0,to_timestamp('2021-10-9 01:15:00', 'YYYY-MM-DD HH24:MI:SS'))
  into order_item (order_id,pro_id,pro_unit,pro_price,pro_point,order_date)
  values(15220,15909,1,3169,0,to_timestamp('2021-10-8 02:20:00', 'YYYY-MM-DD HH24:MI:SS'))
select * from dual;  
--credit_card
insert all
  into credit_card (order_id,card_type,exp_date,card_num,cvv_num)
  values (15213,'Visa',TO_DATE('05-2022', 'MM-YY'),'5113222069436973','444')
  into credit_card (order_id,card_type,exp_date,card_num,cvv_num)
  values (15214,'Master Card',TO_DATE('08-2022', 'MM-YY'),'4556027517001551','521')
select * from dual;  
--true wallet
insert all
  into true_wallet(order_id,phone_num,wallet_email)
  values(15211,0885236947,'Nancy@gmail.com')
  into true_wallet(order_id,phone_num,wallet_email)
  values(15212,0845123645,'Steven@gmail.com')
  into true_wallet(order_id,phone_num,wallet_email)
  values(15217,0885523663,'William@gmail.com')
  into true_wallet(order_id,phone_num,wallet_email)
  values(15218,0933001142,'Kimberely@gmail.com')
  into true_wallet(order_id,phone_num,wallet_email)
  values(15220,0878411473,'Pat@gmail.com')
select * from dual; 
--counter_services
insert all
  into counter_services (order_id,store_id)
  values(15215,1405)
  into counter_services (order_id,store_id)
  values(15216,1506)
  into counter_services (order_id,store_id)
  values(15219,1709)
select * from dual;  
--delivery
insert all
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31501,001,15211,'Delivered','H')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31502,002,15212,'Delivered','H')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31503,003,15213,'Awaiting pickup','S')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31504,004,15214,'Delivered','S')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31505,005,15215,'Delivered','S')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31506,006,15216,'Created','H')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31507,007,15217,'Delivered','H')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31508,008,15218,'Delivered','S')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31509,009,15219,'Created','S')
  into delivery(delivery_id,cus_id,order_id,delivery_status,delivery_type)
  values (31510,010,15220,'Created','H')
select * from dual;
--deliverSt
insert all
  into deliverSt(delivery_id,store_id)
  values (31503,1403)
  into deliverSt(delivery_id,store_id)
  values (31504,1404)
  into deliverSt(delivery_id,store_id)
  values (31505,1405)
  into deliverSt(delivery_id,store_id)
  values (31508,1708)
  into deliverSt(delivery_id,store_id)
  values (31509,1709)
select * from dual;
--deliverH
insert all
  into deliverH(delivery_id,Ship_rate)
  values(31501,'BKK')
  into deliverH(delivery_id,Ship_rate)
  values(31502,'BKK')
  into deliverH(delivery_id,Ship_rate)
  values(31506,'BKK')
  into deliverH(delivery_id,Ship_rate)
  values(31507,'OTH')
  into deliverH(delivery_id,Ship_rate)
  values(31510,'BKK')
select * from dual;

--BKK and Other shipping rate--
insert all
  into BKK_shipping_rate (delivery_id,bkk_pro_weight,bkk_weight_price)
  values(31501,16.11,395)
  into BKK_shipping_rate (delivery_id,bkk_pro_weight,bkk_weight_price)
  values(31502,47.54,850)
  into BKK_shipping_rate (delivery_id,bkk_pro_weight,bkk_weight_price)
  values(31506,0.43,37)
  into Other_shipping_rate (delivery_id,pro_weight,weight_price)
  values(31507,0.33,137)
  into BKK_shipping_rate (delivery_id,bkk_pro_weight,bkk_weight_price)
  values(31510,36.5,600)
select * from dual;

--Buying History--
insert into buying_history (cus_id, order_id, order_date, total)  
  select o.cus_id, o.order_id, oi.order_date, sum(oi.pro_price)
  from orders o
  inner join order_item oi
  on o.order_id = oi.order_id
  group by o.order_id, o.cus_id, oi.order_date
  order by o.cus_id;
