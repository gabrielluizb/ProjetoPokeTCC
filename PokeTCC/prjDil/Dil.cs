using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using log4net;
using log4net.Config;

namespace prjDil
{
    /// <summary>
    /// =======================================================================
    /// Author:         Trevisan, Gilmar
    /// Create date:    27/05/2016
    /// Description:    Database Interface Layer
    /// Public
    /// Parameters:
    /// Public
    /// Methods:        void RemoverTodosParametros()
    ///                 void AdicionarParametro(string nomeParametro, object valorParametro)
    ///                 DataTable ExecutarProcedureConsulta(string nomeStoredProcedure)
    ///                 void ExecutarProcedure(string nomeStoredProcedure)
    /// Dependencies:   System.Configuraton
    /// Error control:  Exceções são elevadas ao método chamador
    ///                 Mensagens de erro são registradas no arquivo de log definido
    ///                 na seção log4net do arquivo Web.config
    /// =======================================================================
    /// </summary>
    public class Dil
    {
        // PROPERTIES
        /// ===================================================================

        // log4net
        private log4net.ILog logger;

        // SqlConnection representa uma conexão com o database SQL Server.
        private SqlConnection Conn = null;

        // SqlParameterCollection representa uma coleção de parâmetros associados a um SqlCommand
        // e seus respectivos mapeamentos para colunas em um DataSet.
        // DataSet representa dados em um cache de memória.
        private SqlParameterCollection ParameterCollection = new SqlCommand().Parameters;

        /// METHODS
        /// =======================================================================

        // Construtor
        public Dil()
        {
            // Configure log4net
            logger = log4net.LogManager.GetLogger("LogInFile");

            logger.Info("Inicio do acesso à camada DAL");
        }

        // Limpa a coleção de parâmeteos
        public void ClearParameterCollection()
        {
            ParameterCollection.Clear();
        }

        // Aciciona parâmetros
        // Prameters: string parameterName - nome do parâmetro armazenado no arquivo web.config
        //            object parameterValue - valor do parâmetro armazenado no arquivo web.config
        // Retorno:
        public void AddParameter(string parameterName, object parameterValue)
        {
            this.ParameterCollection.Add(new SqlParameter(parameterName, parameterValue));
        }

        // Executa uma stored procedure e retorna um datatable
        // Prameters: string storedProcedureName - nome da stored procedure
        // Retorno:   datatable contendo um conjunto de registros
        public DataTable ExecuteStoredProcedureQuery(string storedProcedureName)
        {
            try
            {
                // Preapara a stored procedure para execução
                SqlCommand sqlCommand = PrepareSqlCommnad(CommandType.StoredProcedure, storedProcedureName);

                // SqlDataAdapter representa um conjunto de comandos de dados e uma conexão de banco de
                // dados que são usados para preencher o DataSet e atualizar um banco de dados do SQL Server.
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

                // Representa uma tabela de dados na Memória.
                DataTable dataTable = new DataTable();

                // Manda o comando ir até o banco buscar os dados e o adaptador
                // preencher o dataTable
                sqlDataAdapter.Fill(dataTable);

                return dataTable;
            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Lança o erro no log4net
                logger.Error(ex.Message);

                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
            // Fecha a conexão se estiver aberta
            finally
            {
                this.ClearParameterCollection();

                if (this.Conn.State == ConnectionState.Open)
                    this.Conn.Close();
                logger.Info("Fim do acesso a camada DAL");
            }
        }

        // Executa uma stored procedure que retorna um escalar
        // Prameters: string storedProcedureName - nome da stored procedure
        // Retorno:   um valor inteiro
        public int ExecuteStoredProcedureNonQuery(string storedProcedureName)
        {
            try
            {
                // Preapara a stored procedure para execução
                SqlCommand sqlCommand = PrepareSqlCommnad(CommandType.StoredProcedure, storedProcedureName);

                // Retorna o numero de registro afetados pela execução da stored procedure
                return sqlCommand.ExecuteNonQuery();

            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Lança o erro no log4net
                logger.Error(ex.Message);

                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
            finally
            {
                this.ClearParameterCollection();

                // Fecha a conexão se estiver aberta
                if (this.Conn.State == ConnectionState.Open)
                    this.Conn.Close();
            }
        }

        // Executa um comando T-SQL e retorna um datatable
        // Prameters: string command - um comando T-SQL
        // Retorno:   datatable contendo um conjunto de registros
        public DataTable ExecuteCommandQuery(string command)
        {
            try
            {
                // Preapara a stored procedure para execução
                SqlCommand sqlCommand = PrepareSqlCommnad(CommandType.Text, command);

                // SqlDataAdapter representa um conjunto de comandos de dados e uma conexão de banco de
                // dados que são usados para preencher o DataSet e atualizar um banco de dados do SQL Server.
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

                // Representa uma tabela de dados na Memória.
                DataTable dataTable = new DataTable();

                // Manda o comando ir até o banco buscar os dados e o adaptador preencher o dataTable
                sqlDataAdapter.Fill(dataTable);

                return dataTable;
            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Lança o erro no log4net
                logger.Error(ex.Message);

                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
            // Fecha a conexão se estiver aberta
            finally
            {
                if (this.Conn.State == ConnectionState.Open)
                    this.Conn.Close();
                logger.Info("Fim do acesso a camada DAL");
            }
        }

        // Executa um comando T-SQL e retorna um escalar
        // Prameters: string command - um comando T-SQL
        // Retorno:   object
        public object ExecuteCommandScalar(string command)
        {
            try
            {
                // Preapara a stored procedure para execução
                SqlCommand sqlCommand = PrepareSqlCommnad(CommandType.Text, command);

                return sqlCommand.ExecuteScalar();
            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Lança o erro no log4net
                logger.Error(ex.Message);

                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
            // Fecha a conexão se estiver aberta
            finally
            {
                if (this.Conn.State == ConnectionState.Open)
                    this.Conn.Close();
                logger.Info("Fim do acesso a camada DAL");
            }
        }

        // Cria uma conexão com o database.
        // Prameters:
        // Retorno:   uma conexão com o database
        private SqlConnection NewConection()
        {
            try
            {
                // Cria um objeto de conexão com o database
                this.Conn = new SqlConnection();

                // Define a string de coexão com o database, obtida do arquivo Web.config
                this.Conn.ConnectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                return this.Conn;
            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
        }

        // Prepara a stored procedure ou comando T-SQL para ser executado
        // Prameters: CommandType commandtype - Tipo do comando
        //            Os valores permitidos são: CommandType.StoredProcedure ou CommandType.Text
        //            string command - comando T-SQL
        // Retorno:   uma conexão com o database
        private SqlCommand PrepareSqlCommnad(CommandType commandtype, string command)
        {
            try
            {
                // Cria uma conexão com o database
                this.Conn = this.NewConection();

                // Abre a conexão com o database
                this.Conn.Open();

                // SqlCommand representa uma instrução Transact-SQL ou procedimento armazenado
                // para executar contra um banco de dados do SQL Server. Essa classe não pode ser herdada.
                SqlCommand sqlCommand = new SqlCommand();

                // Associa o sqlCommand à conexão existente
                sqlCommand.Connection = this.Conn;

                // Define comando do tipo stored procedure
                sqlCommand.CommandType = commandtype;

                // Define o nome da stored procedure
                sqlCommand.CommandText = command;

                // Tempo em segundos que o sistema aguarda pela execução da procedure.
                sqlCommand.CommandTimeout = int.Parse(ConfigurationManager.AppSettings["SqlTimeout"].ToString());

                // Adicionar os parametros no comando
                foreach (SqlParameter sqlParameter in ParameterCollection)
                    sqlCommand.Parameters.Add(new SqlParameter(sqlParameter.ParameterName, sqlParameter.Value));

                return sqlCommand;
            }
            // Captura um erro genérico
            catch (Exception ex)
            {
                // Envia a exceção para a o método chamador providenciar uma mensagem para o usuário.
                throw ex;
            }
        }
    }
}
