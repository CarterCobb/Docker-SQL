PRINT 'Restoring Database'

RESTORE FILELISTONLY FROM DISK=N'/var/opt/mssql/backup/HarrisOnlinePropertyPortal.bak'  
GO 

RESTORE DATABASE HarrisOnlinePropertyPortal FROM DISK=N'/var/opt/mssql/backup/HarrisOnlinePropertyPortal.bak' WITH  
MOVE 'HarrisOnlinePropertyPortal' to '/var/opt/mssql/data/HarrisOnlinePropertyPortal.mdf',  
MOVE 'HarrisOnlinePropertyPortal_log' to '/var/opt/mssql/data/HarrisOnlinePropertyPortal_log.ldf'  
GO  