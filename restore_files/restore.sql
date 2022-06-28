PRINT 'Restoring Database'

RESTORE FILELISTONLY FROM DISK=N'/var/opt/mssql/backup/AdventureWorks2019.bak'  
GO 

RESTORE DATABASE AdventureWorks2017 FROM DISK=N'/var/opt/mssql/backup/AdventureWorks2019.bak' WITH  
MOVE 'AdventureWorks2017' to '/var/opt/mssql/data/AdventureWorks2017.mdf',  
MOVE 'AdventureWorks2017_log' to '/var/opt/mssql/data/AdventureWorks2017_log.ldf'  
GO  