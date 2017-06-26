--create database pokedex
use pokedex
GO
/****** Object:  Table [dbo].[tb_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tipo] ON
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (1, N'Grass')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (2, N'Bug')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (3, N'Fire')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (4, N'Water')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (5, N'Ice')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (6, N'Electric')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (7, N'Psychic')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (8, N'Ghost')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (9, N'Poison')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (10, N'Fighting')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (11, N'Ground')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (12, N'Rock')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (13, N'Dark')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (14, N'Steel')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (15, N'Normal')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (16, N'Flying')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (17, N'Fairy')
INSERT [dbo].[tb_tipo] ([id_tipo], [nome]) VALUES (18, N'Dragon')
SET IDENTITY_INSERT [dbo].[tb_tipo] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo2](
	[id_tipo2] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo2] PRIMARY KEY CLUSTERED 
(
	[id_tipo2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tipo2] ON
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (1, N'Grass')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (2, N'Bug')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (3, N'Fire')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (4, N'Water')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (5, N'Ice')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (6, N'Electric')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (7, N'Psychic')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (8, N'Ghost')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (9, N'Poison')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (10, N'Fighting')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (11, N'Ground')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (12, N'Rock')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (13, N'Dark')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (14, N'Steel')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (15, N'Normal')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (16, N'Flying')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (17, N'Fairy')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (18, N'Dragon')
INSERT [dbo].[tb_tipo2] ([id_tipo2], [nome]) VALUES (19, N' ')
SET IDENTITY_INSERT [dbo].[tb_tipo2] OFF
/****** Object:  Table [dbo].[tb_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_pokemon](
	[id_pokemon] [int] IDENTITY(1,1) NOT NULL,
	[num_pokedex] [varchar](50) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[id_tipo] [int] NOT NULL,
	[id_tipo2] [int] NOT NULL,
 CONSTRAINT [PK_tb_pokemon] PRIMARY KEY CLUSTERED 
(
	[id_pokemon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_pokemon] ON
INSERT [dbo].[tb_pokemon] ([id_pokemon], [num_pokedex], [nome], [id_tipo], [id_tipo2]) VALUES (1, '#001',  N'Bulbasaur', 1, 9)
INSERT [dbo].[tb_pokemon] ([id_pokemon], [num_pokedex], [nome], [id_tipo], [id_tipo2]) VALUES (2, '#002', N'Ivysaur', 1, 9)
INSERT [dbo].[tb_pokemon] ([id_pokemon], [num_pokedex], [nome], [id_tipo], [id_tipo2]) VALUES (3, '#003', N'Venusaur', 1, 9)
INSERT [dbo].[tb_pokemon] ([id_pokemon], [num_pokedex], [nome], [id_tipo], [id_tipo2]) VALUES (4, '#004', N'Charmander', 3, 19)
SET IDENTITY_INSERT [dbo].[tb_pokemon] OFF
/****** Object:  StoredProcedure [dbo].[sp_update_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Update record in tb_fabricante table
-- Parameters:     @p_id_fabricante INT - PK
--                 @p_nome      VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_tipo]
    @p_id_tipo INT
  , @p_nome      VARCHAR(50)
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_tipo
           SET nome  = @p_nome
         WHERE id_tipo = @p_id_tipo;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_fabricante table
-- Parameters:     @p_nome  VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_tipo] 
	-- Add the parameters for the stored procedure here
	@p_nome  VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_tipo
	         (
			   nome
			 )
      VALUES (
	           @p_nome
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_fabricante table
--                 by id
-- Parameters:     @p_id_fabricante INT - PK
-- Return values:  id_fabricante INT
--                 nome      VARCAHR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo_by_id]
    @p_id_tipo INT
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

    -- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
	    SELECT id_tipo
             , nome
          FROM tb_tipo
         WHERE id_tipo = @p_id_tipo;
	END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_fabricante table
-- Parameters:
-- Return values:  id_fabricante INT
--                 nome      VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        SELECT id_tipo
             , nome
          FROM tb_tipo;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
CREATE PROCEDURE [dbo].[sp_update_tipo2]
    @p_id_tipo2 INT
  , @p_nome      VARCHAR(50)
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_tipo2
           SET nome  = @p_nome
         WHERE id_tipo2 = @p_id_tipo2;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_fabricante table
-- Parameters:     @p_nome  VARCHAR(50)
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_tipo2] 
	-- Add the parameters for the stored procedure here
	@p_nome  VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_tipo2
	         (
			   nome
			 )
      VALUES (
	           @p_nome
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_fabricante table
--                 by id
-- Parameters:     @p_id_fabricante INT - PK
-- Return values:  id_fabricante INT
--                 nome      VARCAHR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo2_by_id]
    @p_id_tipo2 INT
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

    -- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
	    SELECT id_tipo2
             , nome
          FROM tb_tipo2
         WHERE id_tipo2 = @p_id_tipo2;
	END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_fabricante table
-- Parameters:
-- Return values:  id_fabricante INT
--                 nome      VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_tipo2] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        SELECT id_tipo2
             , nome
          FROM tb_tipo2;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_produto_by_id]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Select all record from tb_produto table
--                 by id
-- Parameters:     @p_id INT - PK
-- Return values:  id_produto   INT
--                 nome        VARCAHR(50)
--                 id_fabricante   INT
--                 nome_fabricante VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_pokemon_by_id]
    @p_id_pokemon INT
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

    -- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
            SELECT b.num_pokedex
				 , b.nome
				 , c.nome      as nome_tipo
				 , d.nome      as nome_tipo2
              FROM tb_pokemon b
        INNER JOIN tb_tipo c
                ON b.id_tipo = c.id_tipo
				INNER JOIN tb_tipo2 d
                ON b.id_tipo2 = d.id_tipo2
             WHERE b.id_pokemon = @p_id_pokemon;
	END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_select_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    30/05/2016
-- Description:    Select all record from tb_produto table
-- Parameters:
-- Return values:  id_produto   INT
--                 nome        VARCAHR(50)
--                 id_fabricante   INT
--                 nome_fabricante VARCHAR(50)
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_select_pokemon] 
    -- Add the parameters for the stored procedure here
AS
BEGIN
    -- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
            SELECT b.num_pokedex
                 , b.nome
                 , c.nome      as nome_tipo
				 , d.nome      as nome_tipo2
              FROM tb_pokemon b
        INNER JOIN tb_tipo c
                ON b.id_tipo = c.id_tipo
				INNER JOIN tb_tipo2 d
                ON b.id_tipo2 = d.id_tipo2
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Insert record in tb_produto table
-- Parameters:     @p_nome      VARCHAR(50)
--                 @p_id_fabricante INT
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage  VARCHAR(2000)
--                 @ErrorSeverity TINYINT
--                 @ErrorState    TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_pokemon] 
	-- Add the parameters for the stored procedure here
	@p_num_pokedex            VARCHAR(50)
	,@p_nome            VARCHAR(50)	
  , @p_id_tipo       INT
   , @p_id_tipo2       INT
AS
BEGIN
	-- SET NOCOUNT ON
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    BEGIN TRY
        INSERT
		  INTO tb_pokemon
	         (
			 num_pokedex
			   ,nome
			 , id_tipo
			 , id_tipo2
			 )
      VALUES (
	  @p_num_pokedex
	           ,@p_nome
             , @p_id_tipo
			 , @p_id_tipo2
	         )
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_produto]    Script Date: 12/01/2016 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:         Trevisan, Gilmar
-- Create date:    27/05/2016
-- Description:    Update record in tb_produto table
-- Parameters:     @p_id_produto INT - PK
--                 @p_nome      VARCHAR(50)
--                 @p_id_fabricante INT
-- Return values:  
-- Error control:  Variables raised
--                 @ErrorMessage   VARCHAR(2000)
--                 @ErrorSeverity  TINYINT
--                 @ErrorState     TINYINT
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_pokemon]
    @p_id_pokemon INT
	,@p_num_pokedex            VARCHAR(50)
  , @p_nome      VARCHAR(50)
  , @p_id_tipo INT
  , @p_id_tipo2 INT
AS
BEGIN
    -- Impede que a mensagem que mostra a contagem do número de
    -- linhas afetadas por uma instrução Transact-SQL ou por um
    -- procedimento armazenado seja retornada como parte do conjunto de resultados.
	SET NOCOUNT ON;

	-- Variables used in error catch
    DECLARE @ErrorMessage   VARCHAR(2000)
          , @ErrorSeverity  TINYINT
          , @ErrorState     TINYINT

    -- Process start
    BEGIN TRY
        UPDATE tb_pokemon
           SET num_pokedex = @p_num_pokedex 
		     ,nome         = @p_nome
             , id_tipo    = @p_id_tipo
			 , id_tipo2    = @p_id_tipo2
         WHERE id_pokemon = @p_id_pokemon;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage  = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState    = ERROR_STATE()
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  ForeignKey [FK_tb_produto_tb_fabricante]    Script Date: 12/01/2016 19:51:55 ******/
ALTER TABLE [dbo].[tb_pokemon]  WITH CHECK ADD  CONSTRAINT [FK_tb_pokemon_tb_tipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tb_tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[tb_pokemon] CHECK CONSTRAINT [FK_tb_pokemon_tb_tipo]
GO
ALTER TABLE [dbo].[tb_pokemon]  WITH CHECK ADD  CONSTRAINT [FK_tb_pokemon_tb_tipo2] FOREIGN KEY([id_tipo2])
REFERENCES [dbo].[tb_tipo2] ([id_tipo2])
GO
ALTER TABLE [dbo].[tb_pokemon] CHECK CONSTRAINT [FK_tb_pokemon_tb_tipo2]
GO