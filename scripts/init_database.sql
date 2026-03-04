use master;
GO

IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET single_user WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

create DATABASE DataWarehouse;
GO

use DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
