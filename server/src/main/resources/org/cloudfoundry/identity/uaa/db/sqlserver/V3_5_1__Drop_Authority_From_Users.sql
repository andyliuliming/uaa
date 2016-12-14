DECLARE  @dropconstraintsql NVARCHAR(MAX);
SELECT @dropconstraintsql = 'ALTER TABLE users' + 
    + ' DROP CONSTRAINT ' + name + ';'
    FROM sys.default_constraints
    where [parent_object_id] = OBJECT_ID(N'users') and [parent_column_id] = COLUMNPROPERTY(OBJECT_ID(N'users'),(N'authority'),'ColumnId')
EXEC sp_executeSQL @dropconstraintsql

ALTER TABLE users DROP COLUMN authority;