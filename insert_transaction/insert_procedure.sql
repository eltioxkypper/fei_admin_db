CREATE PROCEDURE [stored_procedure_name]
	@var1 INT,
	@status INT OUTPUT,
	@message NVARCHAR(MAX) OUTPUT, 
	@id INT OUTPUT
AS
BEGIN TRY
	BEGIN TRANSACTION 
		INSERT INTO Region VALUES (@region_id, @region_description);
	COMMIT TRANSACTION

	SET @status = 200;
	SET @message = 'Ok';
	SET @id = @@IDENTITY;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	SET @status = 500;
	SET @message = ERROR_MESSAGE();
END CATCH

