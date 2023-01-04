REM   Script: Queries and insertion of data
REM   Queries and insertion of data

CREATE TABLE CATEGORIES (
    CATEGORY_ID VARCHAR2(20),
    SUPER_CATEGORIES VARCHAR2(20),
    SUB_CATEGORIES VARCHAR2(20),
    CONSTRAINT PK_CATEGORY PRIMARY KEY (CATEGORY_ID)
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001190',
    'Books',
    'Fiction'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001191',
    'Food',
    'Cereals'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001192',
    'Home Decor',
    'Kitchen'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001193',
    'Electronics',
    'Phones'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001194',
    'Sports',
    'Training Equipment'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001195',
    'Clothing',
    'Casual wear'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001196',
    'Toys',
    'Childrens Toys'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001197',
    'Electronics',
    'Gaming Consoles'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001198',
    'Sports',
    'Running Shoes'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001199',
    'Clothing',
    'Ethnic Wear'
);

INSERT INTO CATEGORIES (
    CATEGORY_ID,
    SUPER_CATEGORIES,
    SUB_CATEGORIES
) VALUES (
    'A001100',
    'Books',
    'Non-Fiction'
);

SELECT
    *
FROM
    CATEGORIES;

-- CATEGORY_ID	SUPER_CATEGORIES	SUB_CATEGORIES
-- A001190	Books	Fiction
-- A001191	Food	Cereals
-- A001192	Home Decor	Kitchen
-- A001193	Electronics	Phones
-- A001194	Sports	Training Equipment
-- A001195	Clothing	Casual wear
-- A001196	Toys	Childrens Toys
-- A001197	Electronics	Gaming Consoles
-- A001198	Sports	Running Shoes
-- A001199	Clothing	Ethnic Wear
-- A001100	Books	Non-Fiction

CREATE TABLE PRODUCT(
    PRODUCT_CODE NUMBER(10),
    ATTRIBUTES VARCHAR2(20),
    CATEGORY_ID VARCHAR2(20),
    PRICE NUMBER(10, 2),
    DESCRIPTION VARCHAR2(150),
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_CODE),
    CONSTRAINT FK_CATEGORY FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID)
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100001,
    'Page count',
    'A001190',
    20.00,
    'The book, Insane; sane is the authors first book.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100002,
    NULL,
    'A001191',
    3.49,
    'The most selling cereal from the company XYZ.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100003,
    'Chimney Type',
    'A001192',
    499.99,
    'The chimney has a coating of stainless steel making it corrosion resistant.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100004,
    'Software',
    'A001193',
    1099.66,
    'The all new Apple iPhone.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100005,
    'Weight',
    'A001194',
    31.99,
    'The most affordable gym equipment there is.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100006,
    'Chest size in inches',
    'A001195',
    14.99,
    NULL
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100007,
    NULL,
    'A001196',
    16.78,
    'The toys are below for children 3 years and below.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100008,
    'Manufacturer',
    'A001197',
    799.52,
    'The PS5 comes with a lot of games.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100009,
    'Shoe size',
    'A001198',
    89.65,
    'The shoe that has been made with recycled ocean plastic.'
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100010,
    'Chest size in inches',
    'A001199',
    21.85,
    NULL
);

INSERT INTO PRODUCT (
    PRODUCT_CODE,
    ATTRIBUTES,
    CATEGORY_ID,
    PRICE,
    DESCRIPTION
) VALUES (
    100011,
    'Page count',
    'A001100',
    5.66,
    'The best selling book of the 21st century.'
);

SELECT
    *
FROM
    PRODUCT;

-- PRODUCT_CODE	ATTRIBUTES	CATEGORY_ID	PRICE	DESCRIPTION
-- 100001	Page count	A001190	20	The book, Insane; sane is the authors first book.
-- 100002	 - 	A001191	3.49	The most selling cereal from the company XYZ.
-- 100003	Chimney Type	A001192	499.99	The chimney has a coating of stainless steel making it corrosion resistant.
-- 100004	Software	A001193	1099.66	The all new Apple iPhone.
-- 100005	Weight	A001194	31.99	The most affordable gym equipment there is.
-- 100006	Chest size in inches	A001195	14.99	 -
-- 100007	 - 	A001196	16.78	The toys are below for children 3 years and below.
-- 100008	Manufacturer	A001197	799.52	The PS5 comes with a lot of games.
-- 100009	Shoe size	A001198	89.65	The shoe that has been made with recycled ocean plastic.
-- 100010	Chest size in inches	A001199	21.85	 -
-- 100011	Page count	A001100	5.66	The best selling book of the 21st century.

CREATE TABLE CUSTOMER(
    CUSTOMER_ID NUMBER(10),
    ADDRESS VARCHAR2(50),
    ZIPCODE NUMBER(6),
    USERNAME VARCHAR2(50),
    PHONE_NUMBER VARCHAR2(150),
    CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTOMER_ID)
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700000,
    '9199 Hanover Dr.Cumming, GA',
    300401,
    'sigma',
    '203-349-6866'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700001,
    'Baker st 221B',
    221000,
    'Sherlock Holmes',
    '803-352-3193'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700002,
    '33 Illinois Street Everett, MA',
    140720,
    'Srikar07',
    '949-637-3076'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700003,
    '8479 Golden Star St.Troy, NY',
    500055,
    'Bhaneuu69',
    '999-999-9999'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700004,
    '67 Oak St.Lagrange, GA',
    500075,
    'PK666',
    '708-663-0264'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700005,
    '593 Colonial Street Leesburg, VA',
    142501,
    '7Satyach007',
    '240-530-5719'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700006,
    'Boulevard Towers Apt 529, NY',
    142267,
    'BASK',
    '479-670-4952'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700007,
    '3 South Carson St.Zionsville, IN ',
    142560,
    'babablacksheep',
    '503-478-7053'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700008,
    '48 Myers St.Roanoke, VA',
    107450,
    'HUman4',
    '360-796-9764'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700009,
    'Boulevard Towers Apt 529, NY',
    142267,
    'BASK',
    '830-237-1857'
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    ADDRESS,
    ZIPCODE,
    USERNAME,
    PHONE_NUMBER
) VALUES (
    700010,
    '67 Oak St.Lagrange, GA',
    500075,
    'IamBatman',
    '618-786-0777'
);

SELECT
    *
FROM
    CUSTOMER;

-- CUSTOMER_ID	ADDRESS	ZIPCODE	USERNAME	PHONE_NUMBER
-- 700000	9199 Hanover Dr.Cumming, GA	300401	sigma	203-349-6866
-- 700001	Baker st 221B	221000	Sherlock Holmes	803-352-3193
-- 700002	33 Illinois Street Everett, MA	140720	Srikar07	949-637-3076
-- 700003	8479 Golden Star St.Troy, NY	500055	Bhaneuu69	999-999-9999
-- 700004	67 Oak St.Lagrange, GA	500075	PK666	708-663-0264
-- 700005	593 Colonial Street Leesburg, VA	142501	7Satyach007	240-530-5719
-- 700006	Boulevard Towers Apt 529, NY	142267	BASK	479-670-4952
-- 700007	3 South Carson St.Zionsville, IN 	142560	babablacksheep	503-478-7053
-- 700008	48 Myers St.Roanoke, VA	107450	HUman4	360-796-9764
-- 700009	Boulevard Towers Apt 529, NY	142267	BASK	830-237-1857
-- 700010	67 Oak St.Lagrange, GA	500075	IamBatman	618-786-0777


CREATE TABLE CART(
    CART_ID NUMBER(10),
    CART_VALUE DECIMAL(10, 2),
    CUSTOMER_ID NUMBER(6),
    CONSTRAINT PK_CART PRIMARY KEY (CART_ID)
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777700,
    21305.34,
    700005
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777701,
    25170.00,
    700009
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777702,
    225495.49,
    700001
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777703,
    30000.00,
    700004
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777704,
    113740.82,
    700006
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777705,
    1879.10,
    700009
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777706,
    14990.00,
    700003
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777707,
    49764.20,
    700000
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777708,
    93742.15,
    700009
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777709,
    55166.88,
    700006
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777710,
    22499.55,
    700002
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777711,
    5962356.52,
    700007
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777712,
    2722.20,
    700008
);

INSERT INTO CART(
    CART_ID,
    CART_VALUE,
    CUSTOMER_ID
) VALUES (
    6777713,
    4930.00,
    700010
);

SELECT
    *
FROM
    CART;

-- CART_ID	CART_VALUE	CUSTOMER_ID
-- 6777700	21305.34	700005
-- 6777701	25170	700009
-- 6777702	225495.49	700001
-- 6777703	30000	700004
-- 6777704	113740.82	700006
-- 6777705	1879.1	700009
-- 6777706	14990	700003
-- 6777707	49764.2	700000
-- 6777708	93742.15	700009
-- 6777709	55166.88	700006
-- 6777710	22499.55	700002
-- 6777711	5962356.52	700007
-- 6777712	2722.2	700008
-- 6777713	4930	700010

CREATE TABLE CART_ITEM(
    CART_ID NUMBER(10),
    PRODUCT_CODE NUMBER(10),
    QUANTITY NUMBER(6),
    CONSTRAINT FK_CART FOREIGN KEY (CART_ID) REFERENCES CART(CART_ID)
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777713,
    100011,
    500
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777713,
    100001,
    105
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777707,
    100009,
    20
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777708,
    100004,
    40
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777704,
    100004,
    100
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777709,
    100008,
    69
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777706,
    100006,
    1000
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777704,
    100005,
    118
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777710,
    100003,
    45
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777705,
    100010,
    86
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777703,
    100001,
    1500
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777712,
    100002,
    780
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777701,
    100007,
    1500
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777702,
    100003,
    451
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777707,
    100008,
    60
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777708,
    100009,
    555
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777711,
    100004,
    5422
);

INSERT INTO CART_ITEM(
    CART_ID,
    PRODUCT_CODE,
    QUANTITY
) VALUES (
    6777700,
    100005,
    666
);

SELECT
    *
FROM
    CART_ITEM;

-- CART_ID	PRODUCT_CODE	QUANTITY
-- 6777713	100011	500
-- 6777713	100001	105
-- 6777707	100009	20
-- 6777708	100004	40
-- 6777704	100004	100
-- 6777709	100008	69
-- 6777706	100006	1000
-- 6777704	100005	118
-- 6777710	100003	45
-- 6777705	100010	86
-- 6777703	100001	1500
-- 6777712	100002	780
-- 6777701	100007	1500
-- 6777702	100003	451
-- 6777707	100008	60
-- 6777708	100009	555
-- 6777711	100004	5422
-- 6777700	100005	666


CREATE TABLE OFFERS(
    OFFER_ID NUMBER(10),
    DISCOUNT_PERCENT NUMBER(10),
    OFFER_TYPE VARCHAR2(100),
    MAX_DISCOUNT_ALLOWED NUMBER(10),
    CART_ID NUMBER(10),
    PRODUCT_CODE NUMBER(10),
    CONSTRAINT PK_OFFERS PRIMARY KEY (OFFER_ID),
    CONSTRAINT FK_OFFERS FOREIGN KEY (CART_ID) REFERENCES CART(CART_ID),
    CONSTRAINT FK_OFFERS2 FOREIGN KEY (PRODUCT_CODE) REFERENCES PRODUCT(PRODUCT_CODE)
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000001,
    15,
    'Mobile Phone Sale.',
    15,
    6777708,
    100004
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000002,
    10,
    'Additional 10% off on all sports goods.',
    10,
    6777708,
    100009
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000003,
    25,
    'Any book 25% off on Non-Fiction.',
    25,
    6777713,
    100001
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000004,
    15,
    'Any book 15% off in Fiction.',
    15,
    6777713,
    100011
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000005,
    10,
    'Additional 10% off on all sports goods.',
    10,
    6777707,
    100009
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000006,
    35,
    'Game Time.',
    35,
    6777707,
    100008
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000007,
    20,
    'Avail upto 20% off on all gym equipment.',
    20,
    6777704,
    100005
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000008,
    15,
    'Mobile phone Sale.',
    15,
    6777704,
    100004
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000009,
    35,
    'Game Time.',
    35,
    6777709,
    100008
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000010,
    10,
    'Clothing sale Casual wear',
    10,
    6777706,
    100006
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000011,
    5,
    '5% off on all Home Decor.',
    5,
    6777710,
    100003
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000012,
    15,
    '15% off on all Ethnic Wear.',
    15,
    6777705,
    100010
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000013,
    15,
    'Any book 15% off in Fiction.',
    15,
    6777703,
    100001
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000014,
    15,
    'All food sale.',
    15,
    6777712,
    100002
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000015,
    3,
    'Regular Discount.',
    3,
    6777701,
    100007
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000016,
    5,
    '5% off on all Home Decor.',
    5,
    6777702,
    100003
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000017,
    15,
    'Mobile Phone Sale.',
    15,
    6777711,
    100004
);

INSERT INTO OFFERS(
    OFFER_ID,
    DISCOUNT_PERCENT,
    OFFER_TYPE,
    MAX_DISCOUNT_ALLOWED,
    CART_ID,
    PRODUCT_CODE
) VALUES (
    000018,
    20,
    'Avail upto 20% off on all gym equipment.',
    20,
    6777700,
    100005
);

SELECT
    *
FROM
    OFFERS
 -- OFFER_ID	DISCOUNT_PERCENT	OFFER_TYPE	MAX_DISCOUNT_ALLOWED	CART_ID	PRODUCT_CODE
 -- 1	15	Mobile Phone Sale.	15	6777708	100004
 -- 2	10	Additional 10% off on all sports goods.	10	6777708	100009
 -- 3	25	Any book 25% off on Non-Fiction.	25	6777713	100001
 -- 4	15	Any book 15% off in Fiction.	15	6777713	100011
 -- 5	10	Additional 10% off on all sports goods.	10	6777707	100009
 -- 6	35	Game Time.	35	6777707	100008
 -- 7	20	Avail upto 20% off on all gym equipment.	20	6777704	100005
 -- 8	15	Mobile phone Sale.	15	6777704	100004
 -- 9	35	Game Time.	35	6777709	100008
 -- 10	10	Clothing sale Casual wear	10	6777706	100006
 -- 11	5	5% off on all Home Decor.	5	6777710	100003
 -- 12	15	15% off on all Ethnic Wear.	15	6777705	100010
 -- 13	15	Any book 15% off in Fiction.	15	6777703	100001
 -- 14	15	All food sale.	15	6777712	100002
 -- 15	3	Regular Discount.	3	6777701	100007
 -- 16	5	5% off on all Home Decor.	5	6777702	100003
 -- 17	15	Mobile Phone Sale.	15	6777711	100004
 -- 18	20	Avail upto 20% off on all gym equipment.	20	6777700	100005


CREATE TABLE INVENTORY( PRODUCT_CODE NUMBER(10),
TOTAL_QUANTITY NUMBER(10),
AVAILABLE_QUANTITY NUMBER(10),
RESERVED_QUANTITY NUMBER(10),
CONSTRAINT FK_INVENTORY FOREIGN KEY (PRODUCT_CODE) REFERENCES PRODUCT(PRODUCT_CODE) );

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100001,
    10000,
    8395,
    1605
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100002,
    5000,
    4220,
    780
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100003,
    1500,
    1004,
    496
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100004,
    15000,
    9438,
    5562
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100005,
    5000,
    4216,
    784
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100006,
    10000,
    9000,
    1000
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100007,
    10000,
    8500,
    1500
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100008,
    1000,
    871,
    129
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100009,
    5000,
    4225,
    575
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100010,
    1000,
    914,
    86
);

INSERT INTO INVENTORY(
    PRODUCT_CODE,
    TOTAL_QUANTITY,
    AVAILABLE_QUANTITY,
    RESERVED_QUANTITY
) VALUES (
    100011,
    2000,
    1500,
    500
);

SELECT
    *
FROM
    INVENTORY;

-- PRODUCT_CODE	TOTAL_QUANTITY	AVAILABLE_QUANTITY	RESERVED_QUANTITY
-- 100001	10000	8395	1605
-- 100002	5000	4220	780
-- 100003	1500	1004	496
-- 100004	15000	9438	5562
-- 100005	5000	4216	784
-- 100006	10000	9000	1000
-- 100007	10000	8500	1500
-- 100008	1000	871	129
-- 100009	5000	4225	575
-- 100010	1000	914	86
-- 100011	2000	1500	500


CREATE TABLE ORDERS(
    ORDER_ID NUMBER(10),
    PAYMENT_ID NUMBER(10),
    TOTAL_AMOUNT DECIMAL(10, 2),
    PAYMENT_MODE VARCHAR2(50),
    ORDER_DETAILS VARCHAR2(250),
    CART_ID NUMBER(10),
    CONSTRAINT PK_ORDER PRIMARY KEY (ORDER_ID),
    CONSTRAINT FK_ORDER FOREIGN KEY (CART_ID) REFERENCES CART(CART_ID)
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90000,
    50001,
    17044.27,
    'Credit Card',
    'Ordered by: 7Satyach007,Order date: 09/29/2022',
    6777700
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90001,
    50002,
    24414.90,
    'Credit Card',
    'Ordered by: BASK , Order date: 01/09/2022',
    6777701
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90002,
    50003,
    214220.71,
    'Credit Card',
    'Ordered by: Sherlock Holmes ,Order date: 10/18/2022',
    6777702
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90003,
    50004,
    25500.00,
    'Debit Card',
    'Ordered by: PK666,Order date: 01/3/2022',
    6777703
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90004,
    50005,
    96490.95,
    'Credit Card',
    'Ordered by: BASK ,Order date: 05/05/2022',
    6777704
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90005,
    50006,
    1597.23,
    'Cash',
    'Ordered by: BASK ,Order date: 01/26/2022',
    6777705
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90006,
    50007,
    13491.00,
    'Debit Card',
    'Ordered by: Bhaneuu69 ,Order date: 11/10/2022',
    6777706
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90007,
    50008,
    32794.98,
    'Cash',
    'Ordered by: sigma ,Order date: 03/17/2022',
    6777707
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90008,
    50009,
    82168.615,
    'Credit Card',
    'Ordered by: BASK ,Order date: 04/30/2022',
    6777708
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90009,
    50010,
    35858.47,
    'Cash',
    'Ordered by: BASK,Order date:08/17/2022',
    6777709
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90010,
    50011,
    21374.57,
    'Credit Card',
    'Ordered by: Srikar07,Order date:02/14/2022',
    6777710
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90011,
    50012,
    5068003.04,
    'Credit Card',
    'Ordered by: babablacksheep ,Order date: 05/13/2022',
    6777711
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90012,
    50013,
    2313.87,
    'Cash',
    'Ordered by: Human4 ,Order date: 11/14/2022',
    6777712
);

INSERT INTO ORDERS(
    ORDER_ID,
    PAYMENT_ID,
    TOTAL_AMOUNT,
    PAYMENT_MODE,
    ORDER_DETAILS,
    CART_ID
) VALUES(
    90013,
    50014,
    3907.50,
    'Debit Card',
    'Ordered by: IamBatman ,Order date:07/21/2022',
    6777713
);

SELECT
    *
FROM
    ORDERS;

-- ORDER_ID	PAYMENT_ID	TOTAL_AMOUNT	PAYMENT_MODE	ORDER_DETAILS	CART_ID
-- 90000	50001	17044.27	Credit Card	Ordered by: 7Satyach007,Order date: 09/29/2022	6777700
-- 90001	50002	24414.9	Credit Card	Ordered by: BASK , Order date: 01/09/2022	6777701
-- 90002	50003	214220.71	Credit Card	Ordered by: Sherlock Holmes ,Order date: 10/18/2022	6777702
-- 90003	50004	25500	Debit Card	Ordered by: PK666,Order date: 01/3/2022	6777703
-- 90004	50005	96490.95	Credit Card	Ordered by: BASK ,Order date: 05/05/2022	6777704
-- 90005	50006	1597.23	Cash	Ordered by: BASK ,Order date: 01/26/2022	6777705
-- 90006	50007	13491	Debit Card	Ordered by: Bhaneuu69 ,Order date: 11/10/2022	6777706
-- 90007	50008	32794.98	Cash	Ordered by: sigma ,Order date: 03/17/2022	6777707
-- 90008	50009	82168.62	Credit Card	Ordered by: BASK ,Order date: 04/30/2022	6777708
-- 90009	50010	35858.47	Cash	Ordered by: BASK,Order date:08/17/2022	6777709
-- 90010	50011	21374.57	Credit Card	Ordered by: Srikar07,Order date:02/14/2022	6777710
-- 90011	50012	5068003.04	Credit Card	Ordered by: babablacksheep ,Order date: 05/13/2022	6777711
-- 90012	50013	2313.87	Cash	Ordered by: Human4 ,Order date: 11/14/2022	6777712
-- 90013	50014	3907.5	Debit Card	Ordered by: IamBatman ,Order date:07/21/2022	6777713



-- Query 1:
-- Priority of products based on high sold amount.


SELECT
    INV.PRODUCT_CODE,
    INV.AVAILABLE_QUANTITY,
    NVL(PR1.UNDISCOUNTED_SOLD_PRICE,
    0) UNDISCOUNTED_SOLD_PRICE
FROM
    (
        SELECT
            T.PRODUCT_CODE,
            SUM(T.QUANTITY),
            SUM(ROUND(T.QUANTITY*PR.PRICE,
            1)) UNDISCOUNTED_SOLD_PRICE
        FROM
            CART_ITEM T
            LEFT OUTER JOIN PRODUCT PR
            ON T.PRODUCT_CODE=PR.PRODUCT_CODE
        WHERE
            T.QUANTITY*PR.PRICE>20000
            OR T.QUANTITY>500
        GROUP BY
            T.PRODUCT_CODE
    ) PR1
    RIGHT OUTER JOIN INVENTORY INV
    ON PR1.PRODUCT_CODE=INV.PRODUCT_CODE
ORDER BY
    UNDISCOUNTED_SOLD_PRICE DESC

-- Query 1 output:
-- PRODUCT_CODE	AVAILABLE_QUANTITY	UNDISCOUNTED_SOLD_PRICE
-- 100004	9438	6116308.9
-- 100003	1004	247995.1
-- 100008	871	103138.1
-- 100009	4225	49755.8
-- 100001	8395	30000
-- 100007	8500	25170
-- 100005	4216	21305.3
-- 100006	9000	14990
-- 100002	4220	2722.2
-- 100011	1500	0
-- 100010	914	0


 -- Query 2:
 -- Customers who prefer products from categories
 -- which are multi-tiered and ranking the customers by
 -- their zip code.
    SELECT
        CUSTOMER_ID,
        INITCAP(USERNAME),
        ZIPCODE,
        RANK() OVER (
    ORDER BY
        ZIPCODE) ZIPCODE_RANK
    FROM
        CUSTOMER
    WHERE
        CUSTOMER_ID IN (
            SELECT
                CUSTOMER_ID
            FROM
                CART
            WHERE
                CART_ID IN (
                    SELECT
                        CART_ID
                    FROM
                        CART_ITEM
                    WHERE
                        PRODUCT_CODE IN (
                            SELECT
                                PRODUCT_CODE
                            FROM
                                PRODUCT
                            WHERE
                                (CATEGORY_ID IN (
                                    SELECT
                                        CATEGORY_ID
                                    FROM
                                        CATEGORIES
                                    WHERE
                                        SUPER_CATEGORIES IN (
                                            SELECT
                                                SUPER_CATEGORIES
                                            FROM
                                                CATEGORIES
                                            GROUP BY
                                                SUPER_CATEGORIES
                                            HAVING
                                                COUNT(SUPER_CATEGORIES)>1
                                        )
                                ))
                                AND (LENGTH(DESCRIPTION)>1)
                        )
                )
        )

-- Query 2 output:

-- CUSTOMER_ID	INITCAP(USERNAME)	ZIPCODE	ZIPCODE_RANK
-- 700006	Bask	142267	1
-- 700009	Bask	142267	1
-- 700005	7satyach007	142501	3
-- 700007	Babablacksheep	142560	4
-- 700000	Sigma	300401	5
-- 700010	Iambatman	500075	6
-- 700004	Pk666	500075	6


 -- Query 3:
 -- Selecting customers with median less than total
 -- amount to target them with personalized
 -- advertisements.
        SELECT
            CU.CUSTOMER_ID,
            CU.USERNAME,
            CU.ADDRESS,
            CU.ZIPCODE,
            CU.PHONE_NUMBER,
            (O.TOTAL_AMOUNT) AS "Total Amount $",
            O.PAYMENT_MODE,
            SUBSTR(O.ORDER_DETAILS,
            -10) AS ORDERDATE
        FROM
            CART CA
            JOIN CUSTOMER CU
            ON CA.CUSTOMER_ID= CU.CUSTOMER_ID JOIN ORDERS O
            ON CA.CART_ID=O.CART_ID
        WHERE
            (O.TOTAL_AMOUNT < (
                SELECT
                    MEDIAN(TOTAL_AMOUNT)
                FROM
                    ORDERS
            ))
        ORDER BY
            CU.CUSTOMER_ID;

-- Query 3 output:

-- CUSTOMER_ID	USERNAME	ADDRESS	ZIPCODE	PHONE_NUMBER	Total Amount $	PAYMENT_MODE	ORDERDATE
-- 700002	Srikar07	33 Illinois Street Everett, MA	140720	949-637-3076	21374.57	Credit Card	02/14/2022
-- 700003	Bhaneuu69	8479 Golden Star St.Troy, NY	500055	999-999-9999	13491	Debit Card	11/10/2022
-- 700005	7Satyach007	593 Colonial Street Leesburg, VA	142501	240-530-5719	17044.27	Credit Card	09/29/2022
-- 700008	HUman4	48 Myers St.Roanoke, VA	107450	360-796-9764	2313.87	Cash	11/14/2022
-- 700009	BASK	Boulevard Towers Apt 529, NY	142267	830-237-1857	1597.23	Cash	01/26/2022
-- 700009	BASK	Boulevard Towers Apt 529, NY	142267	830-237-1857	24414.9	Credit Card	01/09/2022
-- 700010	IamBatman	67 Oak St.Lagrange, GA	500075	618-786-0777	3907.5	Debit Card	07/21/2022

-- Query 4:
-- To identify the number of orders placed by each
-- customer.


SELECT
    B.USERNAME,
    SUM(NUMBER_OF_ORDERS_PLACED_FROM_EACH_CATEGORY ) AS TOTAL_NO_OF_ORDERS_PLACED_BY_CUSTOMER
FROM
    (
        SELECT
            A.USERNAME,
            A.CATEGORY_ID,
            A.SUPER_CATEGORIES,
            COUNT(*) AS NUMBER_OF_ORDERS_PLACED_FROM_EACH_CATEGORY
        FROM
            (
                SELECT
                    CART.CART_ID,
                    CUSTOMER.USERNAME,
                    CART_ITEM.PRODUCT_CODE,
                    PRODUCT.CATEGORY_ID,
                    CATEGORIES.SUPER_CATEGORIES
                FROM
                    CUSTOMER,
                    CART
                    LEFT JOIN CART_ITEM
                    ON CART.CART_ID= CART_ITEM.CART_ID
                    LEFT JOIN PRODUCT
                    ON PRODUCT.PRODUCT_CODE= CART_ITEM.PRODUCT_CODE
                    LEFT JOIN CATEGORIES
                    ON CATEGORIES.CATEGORY_ID= PRODUCT.CATEGORY_ID
                WHERE
                    CART.CUSTOMER_ID= CUSTOMER.CUSTOMER_ID
            ) A
        GROUP BY
            A.USERNAME,
            A.CATEGORY_ID,
            A.SUPER_CATEGORIES
        ORDER BY
            A.USERNAME
    ) B
GROUP BY
    B.USERNAME
ORDER BY
    B.USERNAME;

-- Query 4 output:

-- USERNAME	TOTAL_NO_OF_ORDERS_PLACED_BY_CUSTOMER
-- 7Satyach007	1
-- BASK	7
-- Bhaneuu69	1
-- HUman4	1
-- IamBatman	2
-- PK666	1
-- Sherlock Holmes	1
-- Srikar07	1
-- babablacksheep	1
-- sigma	2

-- Query 5
-- To identify the maximum discounted
-- product in each category which helps user while
-- choosing the product.

SELECT
    MAX(O.DISCOUNT_PERCENT) AS MAXIMUM_DISCOUNT_IN_EACH_SUB_CATEGORY,
    C.SUB_CATEGORIES
FROM
    OFFERS     O
    JOIN PRODUCT P
    ON O.PRODUCT_CODE=P.PRODUCT_CODE JOIN CATEGORIES C
    ON P.CATEGORY_ID=C.CATEGORY_ID
GROUP BY
    C.SUB_CATEGORIES
ORDER BY
    MAXIMUM_DISCOUNT_IN_EACH_SUB_CATEGORY;

-- Query 5 output:

-- MAXIMUM_DISCOUNT_IN_EACH_SUB_CATEGORY	SUB_CATEGORIES
-- 3	Childrens Toys
-- 5	Kitchen
-- 10	Running Shoes
-- 10	Casual wear
-- 15	Phones
-- 15	Cereals
-- 15	Ethnic Wear
-- 15	Non-Fiction
-- 20	Training Equipment
-- 25	Fiction
-- 35	Gaming Consoles

-- Query 6
-- To concentrate on customer interests in
-- buying the products.

SELECT
    CA.CUSTOMER_ID,
    C.SUPER_CATEGORIES,
    C.SUB_CATEGORIES
FROM
    CART       CA
    JOIN CART_ITEM CI
    ON CA.CART_ID=CI.CART_ID JOIN PRODUCT P
    ON CI.PRODUCT_CODE=P.PRODUCT_CODE
    JOIN CATEGORIES C
    ON C.CATEGORY_ID=P.CATEGORY_ID;

-- Query 6 output:

-- CUSTOMER_ID	SUPER_CATEGORIES	SUB_CATEGORIES
-- 700005	Sports	Training Equipment
-- 700009	Toys	Childrens Toys
-- 700001	Home Decor	Kitchen
-- 700004	Books	Fiction
-- 700006	Electronics	Phones
-- 700006	Sports	Training Equipment
-- 700009	Clothing	Ethnic Wear
-- 700003	Clothing	Casual wear
-- 700000	Sports	Running Shoes
-- 700000	Electronics	Gaming Consoles
-- 700009	Electronics	Phones
-- 700009	Sports	Running Shoes
-- 700006	Electronics	Gaming Consoles
-- 700002	Home Decor	Kitchen
-- 700007	Electronics	Phones
-- 700008	Food	Cereals
-- 700010	Books	Non-Fiction
-- 700010	Books	Fiction