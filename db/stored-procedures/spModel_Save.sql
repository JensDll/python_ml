SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[spModel_Save]
  @modelName NVARCHAR(200),
  @model VARBINARY(MAX)
AS
BEGIN
  SET NOCOUNT ON;

  INSERT INTO dbo.Model
  OUTPUT
    inserted.Id
  VALUES
    (@modelName, @model);
END
GO