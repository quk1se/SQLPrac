--1
--DECLARE @time time
--SET @time = CONVERT(TIME, GETDATE())
--IF @time > '16:00:00:0' AND @time < '04:00:00:0' PRINT ('Добрый вечер')
--ELSE PRINT('Добрый день')

--2
--DECLARE @password nvarchar(50)
--DECLARE @count int
--SET @count = 0
--SET @password = ''
--
--WHILE @count < 10
--BEGIN
--	SET @password += CHAR(CAST(RAND() * 26 AS INT) + 97)
--	SET @count += 1
--END
--PRINT(@password)

--3
--DECLARE @fact int
--DECLARE @count int
--SET @fact = 1
--SET @count = 1
--
--WHILE @count <= 25
--BEGIN
--	SET @fact *= @count
--	SET @count += 1
--	PRINT (@fact)
--END

--4
--DECLARE @count INT = 3;
--DECLARE @isPrime int;
--
--WHILE @count <= 1000
--BEGIN
--    SET @isPrime = 1;
--
--    DECLARE @divs INT = 2;
--    WHILE @divs <= SQRT(@count) AND @isPrime = 1
--    BEGIN
--        IF @count % @divs = 0
--        BEGIN
--            SET @isPrime = 0;
--        END
--
--        SET @divs += 1;
--    END
--
--    IF @IsPrime = 1
--    BEGIN
--        PRINT (@count)
--    END
--
--    SET @count = @count + 1;
--END


--5
--DECLARE @money int
--DECLARE @bid int
--DECLARE @win_money int
--DECLARE @first_num int
--DECLARE @second_num int
--DECLARE @third_num int
--DECLARE @message nvarchar(50)
--
--SET @money = 500
--SET @bid = 10
--SET @win_money = 50
-- 
--PRINT ('WELCOME TO CASINO ROULETTE!')
--WHILE @money > 0
--BEGIN
--	SET @message = 'Your balance: ' + CONVERT(NVARCHAR(50),(@money))
--	PRINT(@message)
--	PRINT('ROULETTE SPIN!')
--	SET @money -= @bid
--
--	SET @first_num = CAST(RAND() * 9 AS INT) + 1
--	SET @second_num = CAST(RAND() * 9 AS INT) + 1
--	SET @third_num = CAST(RAND() * 9 AS INT) + 1
--
--	IF @first_num = @second_num AND @second_num = @third_num AND @first_num = @second_num
--	BEGIN
--		SET @message = 'YOU WIN | YOUR NUMS: ' + CONVERT(NVARCHAR(50),(@first_num)) + CONVERT(NVARCHAR(50),(@second_num)) + CONVERT(NVARCHAR(50),(@third_num))
--		SET @money += 50
--		PRINT(@message)
--	END
--
--	ELSE
--	BEGIN
--		SET @message = 'YOU LOOSE | YOUR NUMS: ' + CONVERT(NVARCHAR(50),(@first_num)) + CONVERT(NVARCHAR(50),(@second_num)) + CONVERT(NVARCHAR(50),(@third_num))
--		PRINT(@message)
--	END
--	IF @first_num = 7 AND @second_num = 7 AND @third_num = 7
--	BEGIN
--		PRINT('YOU WIN!')
--		BREAK
--	END
--END







