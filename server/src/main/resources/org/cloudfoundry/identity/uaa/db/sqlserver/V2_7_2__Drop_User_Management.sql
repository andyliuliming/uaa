DECLARE  @dropconstraintsql NVARCHAR(MAX);
SELECT @dropconstraintsql = 'ALTER TABLE identity_provider' + 
    + ' DROP CONSTRAINT ' + name + ';'
    FROM sys.default_constraints
    where [parent_object_id] = OBJECT_ID(N'identity_provider') and [parent_column_id] = COLUMNPROPERTY(OBJECT_ID(N'identity_provider'),(N'disable_internal_user_management'),'ColumnId')
EXEC sp_executeSQL @dropconstraintsql
ALTER TABLE identity_provider DROP COLUMN disable_internal_user_management;