USE Chinook

SELECT [TrackId]
      ,[Name]
      ,[AlbumId]
      ,[MediaTypeId]
      ,[GenreId]
      ,[Composer]
      ,[Milliseconds]
      ,[Bytes]
      ,[UnitPrice]
	  , ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER'
  FROM [Chinook].[dbo].[Track]
