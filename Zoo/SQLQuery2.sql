

PRINT 'Hello World!'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable 


DECLARE @VAR1 int, @VAR2 int
SET @var1 = 3
set @var2 = 5

PRINT 'Variable 1= ' + CONVERT(varchar(5) + CHAR(13) + 'Variable 2 ' + CONVERT(varchar(5),@var2) + CHAR(13) + 'Total: '
PRINT @var1 + @var2

IF @var1 < 2
	BEGIN
		PRINT 'Variable 1 <= ' + CONVERT(varchar(5),@var1) + CHAR(13)
	END
ELSE IF @var 1 > 1 AND @var1 < 3
	BEGIN
		PRINT 'Variable 1 is NOT ' CONVERT(varchar(5),@var1) + CHAR(13)
	END
ELSE IF @var1 = 4 OR  @var 1 < 6
	BEGIN
		PRINT 



