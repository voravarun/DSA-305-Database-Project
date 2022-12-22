CREATE TABLE Stores (
  store_id NUMBER(6) NOT NULL,
  store_addr VARCHAR2(100) NOT NULL,
  store_post_code NUMBER(5) NOT NULL,
  store_city VARCHAR2(20),
  store_phone_num NUMBER(10) NOT NULL,
  PRIMARY KEY (store_id)
);

CREATE TABLE Users (
  cus_id NUMBER(5) NOT NULL,
  f_name VARCHAR2(20) NOT NULL,
  l_name VARCHAR2(25) NOT NULL ,
  phone_num NUMBER(10) NOT NULL,
  cus_email VARCHAR2(40),
  username VARCHAR2(20) NOT NULL,
  password VARCHAR2(20) NOT NULL,
  cus_addr VARCHAR2(100) NOT NULL,
  cus_post_code NUMBER(6) NOT NULL,
  PRIMARY KEY (cus_id)
);

ALTER TABLE Products
MODIFY(pro_name VARCHAR2(50));
CREATE TABLE Products (
  pro_id NUMBER(8) NOT NULL,
  pro_name VARCHAR2(20) NOT NULL,
  pro_type VARCHAR2(15),
  pro_details VARCHAR2(70),
  pro_price NUMBER(6,2) NOT NULL,
  pro_brand VARCHAR2(20),
  pro_weight NUMBER(6,2) NOT NULL,
  PRIMARY KEY (pro_id),
    CHECK(pro_price>=0),
    CHECK(pro_weight>=0)
);

CREATE TABLE Orders (
  order_id NUMBER(6) NOT NULL,
  cus_id NUMBER(5) NOT NULL,
  pay_method CHAR(2) NOT NULL,
  payment_status VARCHAR2(15) NOT NULL,
  delivery_status VARCHAR2(15) NOT NULL,
  PRIMARY KEY (order_id),
    FOREIGN KEY (cus_id)
      REFERENCES Users(cus_id),
  CHECK(pay_method in('TW','CC','CS')),
  CHECK(payment_status in('Pending','Success','Canceled')),
  CHECK(delivery_status in('Created','Awaiting pickup','Delivered','Back to sender'))
);

CREATE TABLE Order_item (
  order_id NUMBER(6) NOT NULL,
  pro_id NUMBER(8) NOT NULL,
  pro_unit NUMBER(6),
  pro_price NUMBER(6,2) NOT NULL,
  pro_point NUMBER(6),
  order_date TIMESTAMP(2),
  PRIMARY KEY (order_id, pro_id),
  CONSTRAINT "FK_Order_item .order_id"
    FOREIGN KEY (order_id)
      REFERENCES Orders(order_id),
  CONSTRAINT "FK_Order_item .pro_id"
    FOREIGN KEY (pro_id)
      REFERENCES Products(pro_id),
  CHECK(pro_unit>=1),
  CHECK(pro_price>=0)
);

CREATE TABLE Favourite_Product (
  cus_id NUMBER(5) NOT NULL,
  pro_id NUMBER(8) NOT NULL,
  PRIMARY KEY (cus_id, pro_id),
  CONSTRAINT "FK_Favourite Users.cus_id"
    FOREIGN KEY (cus_id)
      REFERENCES Users(cus_id),
  CONSTRAINT "FK_Favourite Product.pro_id"
    FOREIGN KEY (pro_id)
      REFERENCES Products(pro_id)
);

CREATE TABLE Stock (
  stock_id NUMBER(8) NOT NULL,
  pro_id NUMBER(8) NOT NULL,
  stock_num NUMBER(6) ,
  stock_status VARCHAR2(15) ,
  PRIMARY KEY (stock_id),
  FOREIGN KEY (pro_id)
      REFERENCES Products(pro_id),
  CHECK(stock_status in('Available', 'Sold Out', 'Not Available')),
  CHECK(stock_num>=0)
);

CREATE TABLE Outlet (
  pro_id NUMBER(8) NOT NULL,
  outlet_disrate NUMBER(5,2) NOT NULL,
  outlet_price NUMBER(6,2),
  PRIMARY KEY (pro_id),
  CONSTRAINT "FK_Outlet Products.pro_id"
        FOREIGN KEY (pro_id) REFERENCES Products(pro_id),
  CHECK(outlet_disrate>=0 AND outlet_disrate<=1),
  CHECK(outlet_price>=0)
);

CREATE TABLE Flash_sale (
  pro_id NUMBER(8) NOT NULL,
  start_date TIMESTAMP(2) NOT NULL,
  end_date TIMESTAMP(2) NOT NULL,
  fs_disrate NUMBER(5,2) NOT NULL,
  fs_price NUMBER(6,2) ,
  PRIMARY KEY (pro_id),
    CONSTRAINT "FK_Flash_sale Products.pro_id"
        FOREIGN KEY (pro_id) REFERENCES Products(pro_id),
  CHECK(start_date<=end_date),
  CHECK(fs_disrate>=0 AND fs_disrate<=1),
  CHECK(fs_price>=0)
);

CREATE TABLE Buying_history (
  cus_id NUMBER(5) NOT NULL,
  order_id NUMBER(6) NOT NULL,
  order_date TIMESTAMP(2) ,
  total NUMBER(6,2) NOT NULL,
  PRIMARY KEY (cus_id, order_id),
    CONSTRAINT "FK_Buying_history Users.cus_id"
        FOREIGN KEY (cus_id) REFERENCES Users(cus_id),
    CONSTRAINT "FK_Buying_history Orders.order_id"
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  CHECK(total>=0)
);

CREATE TABLE True_Wallet (
  order_id NUMBER(6) NOT NULL,
  phone_num NUMBER(10) NOT NULL,
  wallet_email VARCHAR2(40),
  PRIMARY KEY (order_id),
  CONSTRAINT "FK_True_Wallet .order_id"
    FOREIGN KEY (order_id)
      REFERENCES Orders(order_id)
);

CREATE TABLE Counter_Services (
  order_id NUMBER(6) NOT NULL,
  store_id NUMBER(6)  NOT NULL,
  PRIMARY KEY (order_id),
    CONSTRAINT "FK_Counter_Services Orders.order_id"
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
   FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

CREATE TABLE Credit_card (
  order_id NUMBER(6) NOT NULL,
  card_type VARCHAR2(15),
  exp_date DATE,
  card_num NUMBER(16),
  cvv_num NUMBER(3),
  PRIMARY KEY (order_id),
    CONSTRAINT "FK_Credit_card .order_id"
    FOREIGN KEY (order_id)
      REFERENCES Orders(order_id),
  CHECK(card_type in('Visa', 'Master Card'))
);

CREATE TABLE Member_point (
  cus_id NUMBER(5) NOT NULL,
  cus_point NUMBER(6),
  exp_point TIMESTAMP(2),
  PRIMARY KEY (cus_id),
  CONSTRAINT "FK_Member_point .cus_id"
    FOREIGN KEY (cus_id)
      REFERENCES Users(cus_id)
);

CREATE TABLE Delivery (
  delivery_id NUMBER(6) NOT NULL,
  cus_id NUMBER(5)  NOT NULL,
  order_id NUMBER(6) NOT NULL,
  delivery_status VARCHAR2(15) NOT NULL,
  delivery_type CHAR(1) NOT NULL,
  PRIMARY KEY (delivery_id),
  FOREIGN KEY (cus_id)
      REFERENCES Users(cus_id),
  FOREIGN KEY (order_id)
      REFERENCES Orders(order_id),
  CHECK(delivery_status in('Created','Awaiting pickup','Delivered','Back to sender')),
  CHECK(delivery_type in('H','S'))
);

CREATE TABLE DeliverH (
  delivery_id NUMBER(6) NOT NULL,
  Ship_rate CHAR(3) NOT NULL,
  PRIMARY KEY (delivery_id),
    CONSTRAINT "FK_DeliverH Delivery.delivery_id"
        FOREIGN KEY (delivery_id) REFERENCES Delivery(delivery_id),
  CHECK(Ship_rate in('BKK','OTH'))
);

CREATE TABLE DeliverSt (
  delivery_id NUMBER(6) NOT NULL,
  store_id NUMBER(6) ,
  PRIMARY KEY (delivery_id),
    CONSTRAINT "FK_DeliverSt Delivery.delivery_id"
        FOREIGN KEY (delivery_id) REFERENCES Delivery(delivery_id),
  FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

CREATE TABLE Other_shipping_rate (
  delivery_id NUMBER(6) NOT NULL,
  pro_weight NUMBER(7,2) NOT NULL,
  weight_price NUMBER(4) NOT NULL,
  PRIMARY KEY (delivery_id),
  CONSTRAINT "FK_Other_shipping_rate Delivery.delivery_id"
        FOREIGN KEY (delivery_id) REFERENCES Delivery(delivery_id),
  CHECK(pro_weight>0),
  CHECK(weight_price>0)
);
  
CREATE TABLE BKK_shipping_rate (
  delivery_id NUMBER(6) NOT NULL,
  bkk_pro_weight NUMBER(7,2) NOT NULL,
  bkk_weight_price NUMBER(4) NOT NULL,
  PRIMARY KEY (delivery_id),
    CONSTRAINT "FK_BKK_shipping_rate Delivery.delivery_id"
        FOREIGN KEY (delivery_id) REFERENCES Delivery(delivery_id),
  CHECK(bkk_pro_weight>0),
  CHECK(bkk_weight_price>0)
);
