--1 
--SELECT Product_2.name,Producer.name 
--FROM Product_2
--FULL OUTER JOIN Producer
--ON Product_2.id = Producer.id

--2
--SELECT Product_2.name,Delivery.date_of_delivery,Supplier.name 
--FROM Product_2 INNER JOIN Delivery
--ON Delivery.id_product = Product_2.id
--FULL OUTER JOIN Supplier
--ON Delivery.id_supplier = Supplier.id

--3
--SELECT Category.name
--FROM Category
--
--EXCEPT
--
--SELECT Category.name
--FROM Product_2 INNER JOIN Producer
--ON Product_2.id_producer = Producer.id AND Producer.name = 'Trash'
--JOIN Category
--ON Product_2.id_category = Category.id 

--4
--SELECT Producer.name
--FROM Producer
--
--EXCEPT
--
--SELECT Producer.name
--FROM Producer INNER JOIN Product_2
--ON Product_2.id_producer = Producer.id
--JOIN Category
--ON Product_2.id_category = Category.id AND Category.name != 'Milks'