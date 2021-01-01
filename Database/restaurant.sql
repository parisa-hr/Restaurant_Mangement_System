-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: restaurant | type: DATABASE --
-- -- DROP DATABASE IF EXISTS restaurant;
-- CREATE DATABASE restaurant;
-- -- ddl-end --
-- 

-- object: public.customer | type: TABLE --
-- DROP TABLE IF EXISTS public.customer CASCADE;
CREATE TABLE public.customer(
	"Customer_id" bigserial NOT NULL,
	"FirstName" varchar(50) NOT NULL,
	"LastName" varchar(50) NOT NULL,
	"PhoneNo" varchar(20) NOT NULL,
	address text,
	CONSTRAINT customer_pk PRIMARY KEY ("Customer_id")

);
-- ddl-end --
ALTER TABLE public.customer OWNER TO postgres;
-- ddl-end --

INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10001', E'Ali', E'Mirzae', E'021338899', E'Tehran,Folanja');
-- ddl-end --
INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10002', E'Mahdi', E'Karami', E'021778899', E'Tehran,Folanja');
-- ddl-end --
INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10003', E'Hamed', E'Shahi', E'09128989001', E'Tehran,Folanja');
-- ddl-end --
INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10004', E'Saba', E'Rad', E'09367788890', E'Tehran,Folanja');
-- ddl-end --
INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10005', E'Vahid', E'Rahimi', E'021889900', E'Tehran,Folanja');
-- ddl-end --
INSERT INTO public.customer ("Customer_id", "FirstName", "LastName", "PhoneNo", address) VALUES (E'10006', E'Nima', E'Falahzade', E'0921556677', E'Tehran,Folanja');
-- ddl-end --

-- object: public."Restaurant" | type: TABLE --
-- DROP TABLE IF EXISTS public."Restaurant" CASCADE;
CREATE TABLE public."Restaurant"(
	"Restaurant_ID" bigserial NOT NULL,
	"Name" text NOT NULL,
	address text NOT NULL,
	"ContactNo" varchar(20) NOT NULL,
	CONSTRAINT "Restaurant_pk" PRIMARY KEY ("Restaurant_ID")

);
-- ddl-end --
ALTER TABLE public."Restaurant" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."Restaurant" ("Restaurant_ID", "Name", address, "ContactNo") VALUES (E'1', E'shandiz', E'Tehran,Province, Jordan، District 3, Saba Boulevard', E'021 2205 4848');
-- ddl-end --

-- object: public."Staff" | type: TABLE --
-- DROP TABLE IF EXISTS public."Staff" CASCADE;
CREATE TABLE public."Staff"(
	"Staff_Id" bigserial NOT NULL,
	"phoneNo" varchar(20) NOT NULL,
	"Name" text NOT NULL,
	address text NOT NULL,
	"Sallery" integer NOT NULL,
	age smallint NOT NULL,
	shift varchar(10) NOT NULL,
	CONSTRAINT "Staff_pk" PRIMARY KEY ("Staff_Id")

);
-- ddl-end --
ALTER TABLE public."Staff" OWNER TO postgres;
-- ddl-end --

-- object: public."Menu" | type: TABLE --
-- DROP TABLE IF EXISTS public."Menu" CASCADE;
CREATE TABLE public."Menu"(
	"Menu_ID" bigserial NOT NULL,
	name varchar(50) NOT NULL,
	CONSTRAINT "Menu_pk" PRIMARY KEY ("Menu_ID")

);
-- ddl-end --
ALTER TABLE public."Menu" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."Menu" ("Menu_ID", name) VALUES (E'1', E'menu_1');
-- ddl-end --

-- object: public."Order" | type: TABLE --
-- DROP TABLE IF EXISTS public."Order" CASCADE;
CREATE TABLE public."Order"(
	"Order_Id" bigserial NOT NULL,
	"Customer_Id" bigserial NOT NULL,
	"Menu_Id" bigserial NOT NULL,
	"Order_date" date NOT NULL,
	"order_Time" time NOT NULL,
	"OrderStatus" text NOT NULL,
	"TotalPrice" integer NOT NULL,
	CONSTRAINT "Order_pk" PRIMARY KEY ("Order_Id")

);
-- ddl-end --
ALTER TABLE public."Order" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."Order" ("Order_Id", "Customer_Id", "Order_date", "order_Time", "OrderStatus", "TotalPrice", "Menu_Id") VALUES (E'1', E'10001', E'2020-02-01', E'10:00:00', E'Ready', E'12000000', E'1');
-- ddl-end --
INSERT INTO public."Order" ("Order_Id", "Customer_Id", "Order_date", "order_Time", "OrderStatus", "TotalPrice", "Menu_Id") VALUES (E'2', E'10002', E'2020-09-02', E'12:00:00', E'checking', E'40000000', E'1');
-- ddl-end --
INSERT INTO public."Order" ("Order_Id", "Customer_Id", "Order_date", "order_Time", "OrderStatus", "TotalPrice", "Menu_Id") VALUES (E'3', E'10003', E'2020-03-02', E'14:00:00', E'preparing', E'13000000', E'1');
-- ddl-end --
INSERT INTO public."Order" ("Order_Id", "Customer_Id", "Order_date", "order_Time", "OrderStatus", "TotalPrice", "Menu_Id") VALUES (E'4', E'10004', E'2020-04-02', E'15:00:00', E'cancelled', E'600000000', E'1');
-- ddl-end --
INSERT INTO public."Order" ("Order_Id", "Customer_Id", "Order_date", "order_Time", "OrderStatus", "TotalPrice", "Menu_Id") VALUES (E'5', E'10005', E'2020-09-02', E'13:00:00', E'delivering', E'1300000', E'1');
-- ddl-end --

-- object: public."Manager" | type: TABLE --
-- DROP TABLE IF EXISTS public."Manager" CASCADE;
CREATE TABLE public."Manager"(
	"Manager_ID" bigserial NOT NULL,
	name text NOT NULL,
	"lastName" text NOT NULL,
	CONSTRAINT "Manager_pk" PRIMARY KEY ("Manager_ID")

);
-- ddl-end --
ALTER TABLE public."Manager" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."Manager" ("Manager_ID", name, "lastName") VALUES (E'1', E'Hasan', E'Tavakoli');
-- ddl-end --

-- object: public."Supplier" | type: TABLE --
-- DROP TABLE IF EXISTS public."Supplier" CASCADE;
CREATE TABLE public."Supplier"(
	"SupplierID" bigserial NOT NULL,
	"SupplierName" text NOT NULL,
	"ContactNo" varchar(20) NOT NULL,
	address text NOT NULL,
	CONSTRAINT "Supplier_pk" PRIMARY KEY ("SupplierID")

);
-- ddl-end --
ALTER TABLE public."Supplier" OWNER TO postgres;
-- ddl-end --

-- object: public."MenuGroup" | type: TABLE --
-- DROP TABLE IF EXISTS public."MenuGroup" CASCADE;
CREATE TABLE public."MenuGroup"(
	"Group_ID" bigserial NOT NULL,
	"Menu_ID" smallint NOT NULL,
	"GroupName" text NOT NULL,
	CONSTRAINT "MenuGroup_pk" PRIMARY KEY ("Group_ID")

);
-- ddl-end --
ALTER TABLE public."MenuGroup" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'101', E'1', E'Seafood');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'102', E'1', E'Vegetarian meals');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'103', E'1', E'Iranian foods');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'104', E'1', E'Appetizer');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'105', E'1', E'Salad');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'106', E'1', E'Dessert');
-- ddl-end --
INSERT INTO public."MenuGroup" ("Group_ID", "Menu_ID", "GroupName") VALUES (E'107', E'1', E'drinks');
-- ddl-end --

-- object: public."MenuItem" | type: TABLE --
-- DROP TABLE IF EXISTS public."MenuItem" CASCADE;
CREATE TABLE public."MenuItem"(
	"item_Id" bigserial NOT NULL,
	"Group_Id" bigserial NOT NULL,
	"ItemName" text NOT NULL,
	"Price" integer NOT NULL,
	CONSTRAINT "MenuItem_pk" PRIMARY KEY ("item_Id")

);
-- ddl-end --
ALTER TABLE public."MenuItem" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'1', E'101', E'Crab', E'1000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'2', E'101', E'Shrimp', E'2000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'3', E'101', E'Lobster', E'2000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'4', E'101', E'Prawn', E'3000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'5', E'101', E'Crayfish', E'5000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'6', E'102', E'Vegetable gratin', E'2000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'7', E'102', E'HerbiRaw', E'4000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'8', E'102', E'Wholesome Herbivore', E'9000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'9', E'102', E'The Foragers', E'7700000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'10', E'102', E'Plant Meet', E'6000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'11', E'103', E'kabab', E'3900000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'12', E'103', E'jooje kabab', E'10000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'13', E'103', E'gheimeh', E'5000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'14', E'103', E'ghormeh sabzi', E'4000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'15', E'103', E'chicken', E'6000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'16', E'104', E'French fries', E'10000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'17', E'104', E'Special French fries', E'20000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'18', E'104', E'preserved olive', E'12000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'19', E'104', E'Soup of the day', E'180000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'20', E'104', E'yogurt', E'10000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'21', E'105', E'France Salad', E'300000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'22', E'105', E'Caesar salad', E'400000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'23', E'105', E'season''s salad', E'360000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'24', E'105', E'Shirazi salad', E'400000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'25', E'105', E'Chef Salad', E'500000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'26', E'106', E'Stylish strawberry', E'5500000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'27', E'106', E'Chic Nescafe', E'4400000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'28', E'106', E'Stylish chocolate', E'5566000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'29', E'106', E'Jelly', E'1200000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'30', E'106', E'Chic Kit Kat', E'1500000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'31', E'107', E'Lemonade', E'3000000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'32', E'107', E'Masala tea', E'3466000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'33', E'107', E'Citrus aurantium', E'3500000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'34', E'107', E'Soft drinks', E'400000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'35', E'107', E'Dough', E'300000');
-- ddl-end --
INSERT INTO public."MenuItem" ("item_Id", "Group_Id", "ItemName", "Price") VALUES (E'36', E'107', E'tea', E'500000');
-- ddl-end --

-- object: public."Chefs" | type: TABLE --
-- DROP TABLE IF EXISTS public."Chefs" CASCADE;
CREATE TABLE public."Chefs"(
	id bigserial NOT NULL
);
-- ddl-end --
ALTER TABLE public."Chefs" OWNER TO postgres;
-- ddl-end --

-- object: public."Waiter" | type: TABLE --
-- DROP TABLE IF EXISTS public."Waiter" CASCADE;
CREATE TABLE public."Waiter"(
	id bigserial NOT NULL
);
-- ddl-end --
ALTER TABLE public."Waiter" OWNER TO postgres;
-- ddl-end --

-- object: public."Cashier" | type: TABLE --
-- DROP TABLE IF EXISTS public."Cashier" CASCADE;
CREATE TABLE public."Cashier"(
	id bigserial NOT NULL
);
-- ddl-end --
ALTER TABLE public."Cashier" OWNER TO postgres;
-- ddl-end --

-- object: public."Branch" | type: TABLE --
-- DROP TABLE IF EXISTS public."Branch" CASCADE;
CREATE TABLE public."Branch"(
	"Branch_ID" bigserial NOT NULL,
	"Branch_Name" text NOT NULL,
	"Branch_Number" smallint NOT NULL,
	CONSTRAINT "Branch_pk" PRIMARY KEY ("Branch_ID")

);
-- ddl-end --
ALTER TABLE public."Branch" OWNER TO postgres;
-- ddl-end --

INSERT INTO public."Branch" ("Branch_ID", "Branch_Name", "Branch_Number") VALUES (E'1', E'Shandiz_1', E'1');
-- ddl-end --

-- object: "MenuID" | type: CONSTRAINT --
-- ALTER TABLE public."Restaurant" DROP CONSTRAINT IF EXISTS "MenuID" CASCADE;
ALTER TABLE public."Restaurant" ADD CONSTRAINT "MenuID" FOREIGN KEY ("Restaurant_ID")
REFERENCES public."Menu" ("Menu_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Branch_ID" | type: CONSTRAINT --
-- ALTER TABLE public."Restaurant" DROP CONSTRAINT IF EXISTS "Branch_ID" CASCADE;
ALTER TABLE public."Restaurant" ADD CONSTRAINT "Branch_ID" FOREIGN KEY ("Restaurant_ID")
REFERENCES public."Branch" ("Branch_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Restaurant_Id" | type: CONSTRAINT --
-- ALTER TABLE public."Staff" DROP CONSTRAINT IF EXISTS "Restaurant_Id" CASCADE;
ALTER TABLE public."Staff" ADD CONSTRAINT "Restaurant_Id" FOREIGN KEY ("Staff_Id")
REFERENCES public."Restaurant" ("Restaurant_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Customer_Id" | type: CONSTRAINT --
-- ALTER TABLE public."Order" DROP CONSTRAINT IF EXISTS "Customer_Id" CASCADE;
ALTER TABLE public."Order" ADD CONSTRAINT "Customer_Id" FOREIGN KEY ("Customer_Id")
REFERENCES public.customer ("Customer_id") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Menu_ID" | type: CONSTRAINT --
-- ALTER TABLE public."Order" DROP CONSTRAINT IF EXISTS "Menu_ID" CASCADE;
ALTER TABLE public."Order" ADD CONSTRAINT "Menu_ID" FOREIGN KEY ("Menu_Id")
REFERENCES public."Menu" ("Menu_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Restaurant_ID" | type: CONSTRAINT --
-- ALTER TABLE public."Manager" DROP CONSTRAINT IF EXISTS "Restaurant_ID" CASCADE;
ALTER TABLE public."Manager" ADD CONSTRAINT "Restaurant_ID" FOREIGN KEY ("Manager_ID")
REFERENCES public."Restaurant" ("Restaurant_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "ResturantID" | type: CONSTRAINT --
-- ALTER TABLE public."Supplier" DROP CONSTRAINT IF EXISTS "ResturantID" CASCADE;
ALTER TABLE public."Supplier" ADD CONSTRAINT "ResturantID" FOREIGN KEY ("SupplierID")
REFERENCES public."Restaurant" ("Restaurant_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Menu_ID" | type: CONSTRAINT --
-- ALTER TABLE public."MenuGroup" DROP CONSTRAINT IF EXISTS "Menu_ID" CASCADE;
ALTER TABLE public."MenuGroup" ADD CONSTRAINT "Menu_ID" FOREIGN KEY ("Menu_ID")
REFERENCES public."Menu" ("Menu_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "Group_Id" | type: CONSTRAINT --
-- ALTER TABLE public."MenuItem" DROP CONSTRAINT IF EXISTS "Group_Id" CASCADE;
ALTER TABLE public."MenuItem" ADD CONSTRAINT "Group_Id" FOREIGN KEY ("Group_Id")
REFERENCES public."MenuGroup" ("Group_ID") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "StaffID" | type: CONSTRAINT --
-- ALTER TABLE public."Chefs" DROP CONSTRAINT IF EXISTS "StaffID" CASCADE;
ALTER TABLE public."Chefs" ADD CONSTRAINT "StaffID" FOREIGN KEY (id)
REFERENCES public."Staff" ("Staff_Id") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "StaffId" | type: CONSTRAINT --
-- ALTER TABLE public."Waiter" DROP CONSTRAINT IF EXISTS "StaffId" CASCADE;
ALTER TABLE public."Waiter" ADD CONSTRAINT "StaffId" FOREIGN KEY (id)
REFERENCES public."Staff" ("Staff_Id") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "staffID" | type: CONSTRAINT --
-- ALTER TABLE public."Cashier" DROP CONSTRAINT IF EXISTS "staffID" CASCADE;
ALTER TABLE public."Cashier" ADD CONSTRAINT "staffID" FOREIGN KEY (id)
REFERENCES public."Staff" ("Staff_Id") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


