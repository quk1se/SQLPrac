--1 SELECT name, (price-price*discount/100) * quantity as [price_bread_and_milk] FROM Product WHERE name = '����' OR name = '������'
--2 SELECT * FROM Product WHERE quantity > 10 AND date_of_delivery > GETDATE() - 1 AND date_of_delivery < GETDATE() + 1 
--3 SELECT name, price,date_of_delivery FROM Product WHERE DATEDIFF(day, GETDATE(), date_of_delivery) < -30
--4 SELECT name, price FROM Product WHERE category = '������������' AND producer != 'Roshen'
--5 SELECT * FROM Product WHERE name LIKE '�%' AND category LIKE '%�%'
--6 SELECT * FROM Product WHERE name LIKE '�%�'
--7 SELECT * FROM Product WHERE date_of_delivery > '01.05.2023' AND date_of_delivery < GETDATE() - 1 AND price < 50
--8 SELECT * FROM Product WHERE quantity > 100 AND category = '��� ���.'
--9 SELECT * FROM Product WHERE price > 100 AND price < 200 ORDER BY price
--10 UPDATE Product SET price = price - price*5/100 SELECT * FROM PRODUCT
--11 UPDATE Product SET date_of_delivery = GETDATE() WHERE date_of_delivery IS NULL SELECT* FROM Product
--12 DELETE FROM Product WHERE quantity < 100 AND price > 70 SELECT* FROM Product
--13 DELETE FROM Product WHERE category LIKE '%��������%' OR category LIKE '%��������%' SELECT* FROM Product
--14 DELETE FROM Product WHERE LEN(name) = 5 SELECT* FROM Product
--15 DELETE FROM Product WHERE DATEDIFF(day, GETDATE(), date_of_delivery) < -90 SELECT* FROM Product
--16 SELECT TOP 5 * FROM Product ORDER BY price DESC
--17 DELETE FROM Product WHERE producer IS NULL OR discount > 10 SELECT * FROM Product