//***************************** TABLE CREATION ********************************



1. CREATE TABLE Condition (
  CON_ID INT PRIMARY KEY,
  Used_Time varchar2(30) NOT NULL,
  State VARCHAR2(30) CHECK (State IN('Used','New')) NOT NULL
);



2. CREATE TABLE Address (
  Address_ID INT PRIMARY KEY,
  City VARCHAR2(100) NOT NULL,
  House_No INT NOT NULL,
  Street_No INT NOT NULL
);


3. CREATE TABLE Customer (
  Order_ID INT PRIMARY KEY,
  Contact VARCHAR2(20) NOT NULL,
  Customer_Name VARCHAR2(50) NOT NULL,
  Rating NUMBER(2, 1),
  Text VARCHAR2(150),
  Address_ID INT NOT NULL,
  FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);




4. CREATE TABLE Seller (
  S_ID INT PRIMARY KEY,
  S_Name VARCHAR2(50) NOT NULL,
  S_Number VARCHAR2(15) NOT NULL
);



5. CREATE TABLE Product_Customer_Seller (
  P_ID INT NOT NULL,
  Order_ID INT NOT NULL,
  S_ID INT NOT NULL,
  PRIMARY KEY (P_ID, S_ID, Order_ID),
  FOREIGN KEY (P_ID) REFERENCES Product(P_ID),
  FOREIGN KEY (Order_ID) REFERENCES Customer(Order_ID),
  FOREIGN KEY (S_ID) REFERENCES Seller(S_ID)
);



6. CREATE TABLE Shipment (
  Serial_No INT PRIMARY KEY,
  Type1 VARCHAR2(15) NOT NULL,
  Type2 VARCHAR2(15) NOT NULL,
  Type3 VARCHAR2(15) NOT NULL,
  S_ID INT NOT NULL,
  FOREIGN KEY (S_ID) REFERENCES Seller(S_ID)
);



7. CREATE TABLE Catagory (
  C_ID INT PRIMARY KEY,
  C_Name VARCHAR2(30) NOT NULL
);



8. CREATE TABLE Supplier (
  Sup_ID INT PRIMARY KEY,
  Sup_Name VARCHAR2(50) NOT NULL,
  Sup_Number VARCHAR2(15) NOT NULL
);



9. CREATE TABLE Shop (
  Shop_No INT PRIMARY KEY,
  Section1 VARCHAR2(5) NOT NULL,
  Section2 VARCHAR2(5) NOT NULL,
  Section3 VARCHAR2(5) NOT NULL,
  Section4 VARCHAR2(5) NOT NULL
);



10. CREATE TABLE Product (
  P_ID INT PRIMARY KEY,
  Price NUMBER(10,2) NOT NULL,
  P_Name VARCHAR2(50) NOT NULL,
  CON_ID INT NOT NULL,
  C_ID INT NOT NULL,
  Shop_No INT NOT NULL,
  FOREIGN KEY (CON_ID) REFERENCES Condition(CON_ID),
  FOREIGN KEY (C_ID) REFERENCES Catagory(C_ID),
  FOREIGN KEY (Shop_No) REFERENCES Shop(Shop_No)
);


11. CREATE TABLE Product_Supplier (
  P_ID INT NOT NULL,
  Sup_ID INT NOT NULL,
  FOREIGN KEY (P_ID) REFERENCES Product(P_ID),
  FOREIGN KEY (Sup_ID) REFERENCES Supplier(Sup_ID)
);



//***************************** TABLE SEQUENCE ********************************

Create Sequence CON_ID_seq
   START WITH 11000
   INCREMENT BY 1
   MAXVALUE 99999
   NOCACHE
   NOCYCLE;



Create Sequence Order_ID_seq
   START WITH 1200000
   INCREMENT BY 50
   MAXVALUE 99999999
   NOCACHE
   NOCYCLE;



Create Sequence Address_ID_FK
   START WITH 10
   INCREMENT BY 10
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;

Create Sequence Address_ID_seq
   START WITH 10
   INCREMENT BY 10
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;

//**************________________******************

Create Sequence P_ID_FK1
   START WITH 2000
   INCREMENT BY 1
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;


Create Sequence Order_ID_FK
   START WITH 1200000
   INCREMENT BY 50
   MAXVALUE 99999999
   NOCACHE
   NOCYCLE;


Create Sequence S_ID_FK1
   START WITH 100
   INCREMENT BY 5
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;

//****************_________________****************

Create Sequence S_ID_seq
   START WITH 100
   INCREMENT BY 5
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;



Create Sequence Serial_No_seq
   START WITH 13000
   INCREMENT BY 1
   MAXVALUE 99999
   NOCACHE
   NOCYCLE;


Create Sequence S_ID_FK2
   START WITH 100
   INCREMENT BY 5
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;




Create Sequence C_ID_seq
   START WITH 14000
   INCREMENT BY 1
   MAXVALUE 99999
   NOCACHE
   NOCYCLE;



Create Sequence Sup_ID_seq
   START WITH 15000
   INCREMENT BY 1
   MAXVALUE 999999
   NOCACHE
   NOCYCLE;


//*******************___________******************

Create Sequence P_ID_FK2
   START WITH 2000
   INCREMENT BY 1
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;



Create Sequence Sup_ID_FK
   START WITH 15000
   INCREMENT BY 1
   MAXVALUE 999999
   NOCACHE
   NOCYCLE;

//*****************___________********************

Create Sequence P_ID_seq
   START WITH 2000
   INCREMENT BY 1
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;



Create Sequence CON_ID_FK
   START WITH 11000
   INCREMENT BY 1
   MAXVALUE 99999
   NOCACHE
   NOCYCLE;



Create Sequence C_ID_FK
   START WITH 14000
   INCREMENT BY 1
   MAXVALUE 99999
   NOCACHE
   NOCYCLE;



Create Sequence Shop_No_FK
   START WITH 500
   INCREMENT BY 1
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;



Create Sequence Shop_No_seq
   START WITH 500
   INCREMENT BY 1
   MAXVALUE 9999
   NOCACHE
   NOCYCLE;




//***************************** DATA INSERTION ********************************



1. 
INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '6 Months', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '1 Year', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '10 Months', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, 'Not used', 'New');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '1 Year 7 Months', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '2 Years', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '11 Months', 'Used');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, 'Not used', 'New');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, 'Not used', 'New');

INSERT INTO Condition(CON_ID, Used_Time, State)
VALUES (CON_ID_seq.NEXTVAL, '1 Year', 'Used');


//*****************************************************************************


2. 
INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 15, 8);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 25, 50);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Sylhet', 33, 11);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Chittagong', 9, 17);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 15, 3);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Comilla', 55, 81);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 13, 8);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 11, 9);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Dhaka', 18, 8);

INSERT INTO Address(Address_ID, City, House_No, Street_No)
VALUES (Address_ID_seq.NEXTVAL, 'Rajshahi', 67, 34);


//*****************************************************************************


3.
INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'hasan@gmail.com', 'Hasan', 4.5, 'Great Product!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'mehedi@gmail.com', 'Mehedi', 5, 'Great Item!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'mazu@gmail.com', 'Mazu', 4.5, 'Very Good Product', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'bashar@gmail.com', 'Bashar', 3.5, 'Great!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'alam@gmail.com', 'Alam', 3, 'Not so nice', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'nakib@gmail.com', 'Nakib', 4.5, 'Great!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'rahman@gmail.com', 'Rahman', 5, 'Great Product!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'rahib@gmail.com', 'Rahib', 4.5, 'Great Quality!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'hasib@gmail.com', 'Hasib', 4.5, 'Great Product!', Address_ID_FK.NEXTVAL);

INSERT INTO Customer(Order_ID, Contact, Customer_Name, Rating, Text, Address_ID)
VALUES (Order_ID_seq.NEXTVAL, 'soham@gmail.com', 'Soham', 4.5, 'Great!', Address_ID_FK.NEXTVAL);


//*****************************************************************************

4.
INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'SAMSUNG', '123-456-789');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'iPhone', '123-789-456');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'RealMe', '001-456-789');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'Xiaomi', '123-456-789');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'Oppo', '881-456-789');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'Vivo', '614-456-009');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'OnePlus', '123-000-789');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'Walton', '880-256-781');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'PC Builders BD', '880-006-709');

INSERT INTO Seller(S_ID, S_Name, S_Number)
VALUES (S_ID_seq.NEXTVAL, 'Rynas', '880-000-109');


//*****************************************************************************

5.
INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 109000.90, 'Samsung S23', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 85000, 'iPhone 12', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 65000.55, 'RealME GT2', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 39999.99, 'Poco F3', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 55000, 'Oppo P11', CON_ID_FK.NEXTVAL,C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 70500, 'Vivo V2', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 95500.50, 'OnePluse 10R', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 20500, 'Walton X2', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 78500.85, 'HP Pavilion i7', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);

INSERT INTO Product(P_ID, Price, P_Name, CON_ID, C_ID, Shop_No)
VALUES (P_ID_seq.NEXTVAL, 60500, 'Lenovo PAD3', CON_ID_FK.NEXTVAL, C_ID_FK.NEXTVAL, Shop_No_FK.NEXTVAL);



//****************************************************************************

6.
INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);

INSERT INTO Product_Customer_Seller(P_ID, Order_ID, S_ID)
VALUES (P_ID_FK1.NEXTVAL, Order_ID_FK.NEXTVAL, S_ID_FK1.NEXTVAL);


//***************************************************************************

7.
INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);
 
INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);

INSERT INTO Shipment(Serial_No, Type1, Type2, Type3, S_ID)
VALUES (Serial_No_seq.NEXTVAL, 'By Road', 'By Cargo', 'By Air', S_ID_FK2.NEXTVAL);


//***************************************************************************

8.
INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Smartphone');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Computer');

INSERT INTO Catagory(C_ID, C_Name)
VALUES (C_ID_seq.NEXTVAL, 'Computer');


//***************************************************************************

9.
INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'DHL', '987-654-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'FedEx', '456-654-3200');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'UPS', '880-654-1110');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'MSC', '777-000-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'TNT', '565-654-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'Alibaba', '000-654-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'RedEx', '880-211-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'Agility', '231-321-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'Expeditors', '999-111-3210');

INSERT INTO Supplier(Sup_ID, Sup_Name, Sup_Number)
VALUES (Sup_ID_seq.NEXTVAL, 'Amazon', '555-654-3210');


//***************************************************************************


10.
INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A1', 'B1', 'C1', 'D1');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A2', 'B2', 'C2', 'D2');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A3', 'B3', 'C3', 'D3');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A4', 'B4', 'C4', 'D4');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A5', 'B5', 'C5', 'D5');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A6', 'B6', 'C6', 'D6');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A7', 'B7', 'C7', 'D7');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A8', 'B8', 'C8', 'D8');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A9', 'B9', 'C9', 'D9');

INSERT INTO Shop(Shop_No, Section1, Section2, Section3, Section4)
VALUES (Shop_No_seq.NEXTVAL, 'A10', 'B10', 'C10', 'D10');



//***************************************************************************

11.
INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);

INSERT INTO Product_Supplier(P_ID, Sup_ID)
VALUES (P_ID_FK2.NEXTVAL, Sup_ID_FK.NEXTVAL);


//*********************************** VIEW ****************************************


1. 
Product -> Products

CREATE VIEW Products AS 
SELECT Product.P_ID, Product.Price, Product.P_Name, 
Condition.Used_Time, Condition.State, 
Catagory.C_Name
FROM Product
JOIN Condition ON Product.CON_ID = Condition.CON_ID
JOIN Catagory ON Product.C_ID = Catagory.C_ID;



2.
Customer -> Customers


CREATE VIEW Customers AS 
SELECT Customer.Order_ID, Customer.Contact, Customer.Customer_Name, 
Customer.Rating, 
Address.City
FROM Customer
JOIN Address ON Customer.Address_ID = Address.Address_ID;


3.
Seller -> Sellers 


CREATE VIEW Sellers AS 
SELECT Seller.S_Name, Seller.S_Number,
Shipment.Serial_No
FROM Seller
JOIN Shipment ON Seller.S_ID = Shipment.S_ID;



//********************************* USER & ROLES *******************************

1.
CREATE USER Bashar
IDENTIFIED BY bashar123;

CREATE ROLE Admin;

GRANT Admin to Bashar;

GRANT SELECT, INSERT, UPDATE, DELETE ON Condition TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Catagory TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Customer TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Seller TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Product TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Supplier TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Shop TO Admin;



2.
CREATE USER Tanjim
IDENTIFIED BY tanjim123;

CREATE ROLE Seller;

GRANT Seller to Tanjim;

GRANT SELECT, INSERT, UPDATE, DELETE ON Condition TO Seller;
GRANT SELECT, INSERT, UPDATE, DELETE ON Catagory TO Seller;
GRANT SELECT, INSERT, UPDATE, DELETE ON Product TO Seller;



3.
CREATE USER Xavi
IDENTIFIED BY xavi123;

CREATE ROLE Buyer;

GRANT Buyer to Xavi;

GRANT SELECT, INSERT, UPDATE, DELETE ON Customers TO Buyer;
GRANT SELECT ON Products TO Buyer;



4.
CREATE USER Dan
IDENTIFIED BY dan123;

CREATE ROLE Supply;

GRANT Supply to Dan;

GRANT SELECT, INSERT, UPDATE, DELETE ON Supplier TO Supply;
GRANT SELECT, INSERT, UPDATE ON Shipment TO Supply;
GRANT SELECT, UPDATE ON Seller TO Supply;
GRANT SELECT, UPDATE ON Shop TO Supply;



//*************************************** JOIN **********************************


1.
SELECT P.P_Name, P.Price, C.Used_Time, C.State
FROM Product P, Condition C
WHERE P.CON_ID = C.CON_ID;


2. 
SELECT Cus.Contact, Cus.Customer_Name, Cus.Rating, A.City
FROM Customer Cus, Address A
WHERE Cus.Address_ID = A.Address_ID;


3.
SELECT S.S_Name, S.S_Number, Sh.Serial_No
FROM Seller S, Shipment Sh
WHERE S.S_ID = Sh.S_ID;


//**************************** SUB QUERY **************************************


1. 
SELECT P_Name
FROM Product
WHERE CON_ID IN (
  SELECT CON_ID
  FROM Condition
  WHERE State = 'Used'
);


2.
SELECT S_Name
FROM Seller
WHERE S_ID IN (
  SELECT S_ID
  FROM  Customer, Address 
  WHERE Customer.Address_ID = Address.Address_ID
  AND Address.City = 'Dhaka'
);



//*************************** GROUP BY *****************************************


1.
SELECT State, 
COUNT(*) as Condition_Count
FROM Condition
GROUP BY State;


2.
SELECT Address.City, 
COUNT(*) as Customer_Count
FROM Customer, Address
WHERE Customer.Address_ID = Address.Address_ID
GROUP BY Address.City;



//******************************* SINGLE ROW ************************************


1.
SELECT Customer_Name, Rating
FROM Customer
ORDER BY Rating DESC;


2.
SELECT House_No || ' / ' || Street_No || ', ' || City AS Address
FROM Address
WHERE Address_ID = 30;
