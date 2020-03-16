SELECT DB_NAME() AS DbName, 
name AS FileName, 
size/(128.0*1024) AS CurrentSizeGB, 
size/(128.0*1024)  - CAST(FILEPROPERTY(name, 'SpaceUsed') AS INT)/(128.0*1024)  AS FreeSpaceGB 
FROM sys.database_files; 