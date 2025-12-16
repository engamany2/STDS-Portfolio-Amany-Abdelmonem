--'check number of each table']

SELECT
  (SELECT COUNT(*) FROM Product) AS Products,
  (SELECT COUNT(*) FROM Region) AS Region,
  (SELECT COUNT(*) FROM Reseller) AS Reseller,
  (SELECT COUNT(*) FROM Salesperson) AS Salesperson,
  (SELECT COUNT(*) FROM SalespersonRegion) AS SalespersonRegion,
  (SELECT COUNT(*) FROM Targets) AS Target;

--  SELECT SUM(CASE WHEN [col1] IS NULL THEN 1 ELSE 0 END) AS [Null_col1],
--       SUM(CASE WHEN [col2] IS NULL THEN 1 ELSE 0 END) AS [Null_col2],
--          FROM [Targets];

SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('Targets');


--'check Nulls'
DECLARE @TableName NVARCHAR(100) = 'Targets';  
DECLARE @Cols NVARCHAR(MAX) = '';
DECLARE @SQL NVARCHAR(MAX);
-- get columns of table
SELECT @Cols = STRING_AGG(
        'SUM(CASE WHEN ' + QUOTENAME(name) + ' IS NULL THEN 1 ELSE 0 END) AS [Null_' + name + ']', ', ')
FROM sys.columns WHERE object_id = OBJECT_ID(@TableName);
-- apply sql commands
SET @SQL = 'SELECT ' + @Cols + ' FROM ' + QUOTENAME(@TableName) + ';';
EXEC sp_executesql @SQL;  

-- Nulls with NA
select color from Product;
UPDATE Product
SET color = 'UNKNOWN'
WHERE color = 'NA';



--'check duplciates'
DECLARE @TableName NVARCHAR(100) = 'Targets';  
DECLARE @Cols NVARCHAR(MAX) = '';
DECLARE @SQL NVARCHAR(MAX);

SELECT @Cols = STRING_AGG(QUOTENAME(name), ', ') FROM sys.columns WHERE object_id = OBJECT_ID(@TableName);

SET @SQL = '
;WITH cte AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY ' + @Cols + ' ORDER BY (SELECT NULL)) AS rn
    FROM ' + @TableName + '
)
DELETE FROM cte WHERE rn > 1;'

EXEC sp_executesql @SQL;

-- (1,2,3) : id 1,4,5  -> rownumber will give one row (like 1) rn=1 , and the rest (rn >1) (which col?(random select null)
-- (3,4,5) : row id 3,6,7
-- (2,3,4) : row id 2
-- OVER -> to determine data get into ROW_NUMBER() function