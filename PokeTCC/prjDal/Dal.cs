using prjDil;
using prjDto;
using System;
using System.Collections.Generic;
// using System.Configuration;
using System.Data;

namespace prjDal
{
    /// <summary>
    /// =======================================================================
    /// Author:         Trevisan, Gilmar
    /// Create date:    27/05/2016
    /// Description:    Database Access Layer
    /// Public
    /// Properties:
    /// Public
    /// Methods:        List<DtoPokemon> SelectPokemon()
    ///                 DtoPokemon SelectPokemon(int IdPokemon)
    ///                 void InsertPokemon(DtoPokemon Pokemon)
    ///                 public void EditPokemon(DtoPokemon Pokemon)
    ///                 void DeletePokemon(int IdPokemon)
    /// Dependencies:   System.Configuraton
    ///                 log4net
    /// Error control:  Exceções são elevadas ao método chamador
    ///                 Mensagens de erro são registradas no arquivo de log definido
    ///                 na seção log4net do arquivo Web.config
    /// =======================================================================
    /// </summary>
    public class Dal
    {
        #region PROPERTIES
        // set log4net interface
        private log4net.ILog logger;

        private Dil objDil = null;
        #endregion PROPERTIES

        #region CONSTRUCTORS
        public Dal()
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            objDil = new Dil();
        }
        #endregion CONSTRUCTORS

        #region METHODS
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        /// NESTA SEÇÃO ESTAO OS MÉTODOS QUE IMPLEMENTAM AS FUNÇÕES DE ACESSO À CADA ENTIDADE NO DATABASE ///
        /////////////////////////////////////////////////////////////////////////////////////////////////////


        /// Pokemon
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public List<DtoPokemon> SelectPokemon()
        {
            try
            {
                DataTable dtPokemons = objDil.ExecuteStoredProcedureQuery("sp_select_Pokemon");

                DtoPokemon Pokemon = null;

                List<DtoPokemon> lstPokemons = new List<DtoPokemon>();

                foreach (DataRow row in dtPokemons.Rows)
                {
                    Pokemon = new DtoPokemon(row);
                    lstPokemons.Add(Pokemon);
                    Pokemon = null;
                }

                return lstPokemons;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public DtoPokemon SelectPokemon(int IdPokemon)
        {
            try
            {
                objDil.AddParameter("@p_id_Pokemon", IdPokemon);

                DataTable dtPokemons = objDil.ExecuteStoredProcedureQuery("sp_select_Pokemon_by_id");

                DtoPokemon objPokemon = null;

                if (dtPokemons.Rows.Count > 0)
                    objPokemon = new DtoPokemon(dtPokemons.Rows[0]);

                return objPokemon;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void InsertPokemon(DtoPokemon Pokemon)
        {
            try
            {
                objDil.AddParameter("@p_num_pokedex", Pokemon.NumPokedex);
                objDil.AddParameter("@p_nome", Pokemon.Nome);

                objDil.AddParameter("@p_id_Tipo", Pokemon.IdTipo);

                objDil.AddParameter("@p_id_Tipo2", Pokemon.IdTipo2);

                objDil.ExecuteStoredProcedureNonQuery("sp_insert_Pokemon");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void EditPokemon(DtoPokemon Pokemon)
        {
            try
            {
                objDil.AddParameter("@p_id_Pokemon", Pokemon.IdPokemon);
                objDil.AddParameter("@p_num_pokedex", Pokemon.NumPokedex);
                objDil.AddParameter("@p_nome", Pokemon.Nome);

                objDil.AddParameter("@p_id_Tipo", Pokemon.IdTipo);

                objDil.AddParameter("@p_id_Tipo2", Pokemon.IdTipo2);

                objDil.ExecuteStoredProcedureNonQuery("sp_update_Pokemon");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }
        /// Tipo
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public List<DtoTipo> SelectTipo()
        {
            try
            {
                DataTable dtTipos = objDil.ExecuteStoredProcedureQuery("sp_select_Tipo");

                DtoTipo Tipo = null;

                List<DtoTipo> lstTipos = new List<DtoTipo>();

                foreach (DataRow row in dtTipos.Rows)
                {
                    Tipo = new DtoTipo(row);
                    lstTipos.Add(Tipo);
                    Tipo = null;
                }

                return lstTipos;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public DtoTipo SelectTipo(int IdTipo)
        {
            try
            {
                objDil.AddParameter("@p_id_Tipo", IdTipo);

                DataTable dtTipos = objDil.ExecuteStoredProcedureQuery("sp_select_Tipo_by_id");

                DtoTipo objTipo = null;

                if (dtTipos.Rows.Count > 0)
                    objTipo = new DtoTipo(dtTipos.Rows[0]);

                return objTipo;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void InsertTipo(DtoTipo Tipo)
        {
            try
            {
                objDil.AddParameter("@p_nome", Tipo.Nome);


                objDil.ExecuteStoredProcedureNonQuery("sp_insert_Tipo");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void EditTipo(DtoTipo Tipo)
        {
            try
            {
                objDil.AddParameter("@p_id_Tipo", Tipo.IdTipo);
                objDil.AddParameter("@p_nome", Tipo.Nome);

                objDil.ExecuteStoredProcedureNonQuery("sp_update_Tipo");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }
        public List<DtoTipo2> SelectTipo2()
        {
            try
            {
                DataTable dtTipo2s = objDil.ExecuteStoredProcedureQuery("sp_select_Tipo2");

                DtoTipo2 Tipo2 = null;

                List<DtoTipo2> lstTipo2s = new List<DtoTipo2>();

                foreach (DataRow row in dtTipo2s.Rows)
                {
                    Tipo2 = new DtoTipo2(row);
                    lstTipo2s.Add(Tipo2);
                    Tipo2 = null;
                }

                return lstTipo2s;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public DtoTipo2 SelectTipo2(int IdTipo2)
        {
            try
            {
                objDil.AddParameter("@p_id_Tipo2", IdTipo2);

                DataTable dtTipo2s = objDil.ExecuteStoredProcedureQuery("sp_select_Tipo2_by_id");

                DtoTipo2 objTipo2 = null;

                if (dtTipo2s.Rows.Count > 0)
                    objTipo2 = new DtoTipo2(dtTipo2s.Rows[0]);

                return objTipo2;
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void InsertTipo2(DtoTipo2 Tipo2)
        {
            try
            {
                objDil.AddParameter("@p_nome", Tipo2.Nome);


                objDil.ExecuteStoredProcedureNonQuery("sp_insert_Tipo2");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }

        public void EditTipo2(DtoTipo2 Tipo2)
        {
            try
            {
                objDil.AddParameter("@p_id_Tipo2", Tipo2.IdTipo2);
                objDil.AddParameter("@p_nome", Tipo2.Nome);

                objDil.ExecuteStoredProcedureNonQuery("sp_update_Tipo2");
            }
            catch (Exception ex)
            {

                if (ex.Data["Logged"] == null)
                {
                    // Log the error message in file
                    logger.Error("Message: " + ex.Message, ex);

                    // Add Logged flag
                    ex.Data.Add("Logged", "System");
                }

                throw ex;
            }
        }
        #endregion METHODS
    }
}
