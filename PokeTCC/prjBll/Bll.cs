using prjDal;
using prjDto;
using System;
using System.Collections.Generic;
using System.Configuration;


namespace prjBll
{
    /// <summary>
    /// =======================================================================
    /// Author:         Trevisan, Gilmar
    /// Create date:    27/05/2016
    /// Description:    Business Logic Layer
    /// Public
    /// Properties:     
    /// Public
    /// Methods:        List<DtoPokemon> SelectPokemon()
    ///                 DtoPokemon SelectPokemon(int p_IdPokemon)
    ///                 void EditPokemon(DtoPokemon p_Pokemon)
    ///                 void InsertPokemon(DtoPokemon p_Pokemon)
    ///                 void DeletePokemon(int p_IdPokemon)
    /// Dependencies:   System.Configuraton
    ///                 log4net
    /// Error control:  Exceções são elevadas ao método chamador
    ///                 Mensagens de erro são registradas no arquivo de log definido
    ///                 na seção log4net do arquivo Web.config
    /// =======================================================================
    /// </summary>
    public class Bll
    {
        #region PROPERTIE
        // set log4net interface
        private log4net.ILog logger;

        // Referência da classe DAL
        private Dal objDal = null;
        #endregion PROPERTIE

        #region CONSTRUCTORS
        public Bll()
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            this.objDal = new Dal();
        }
        #endregion CONSTRUCTORS

        #region METHODS
        /// Pokemon
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public List<DtoPokemon> SelectPokemon()
        {
            try
            {
                List<DtoPokemon> lstPokemons = null;

                lstPokemons = objDal.SelectPokemon();

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

        public DtoPokemon SelectPokemon(int p_IdPokemon)
        {
            try
            {
                DtoPokemon objPokemon = objDal.SelectPokemon(p_IdPokemon);

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

        public void EditPokemon(DtoPokemon p_Pokemon)
        {
            try
            {
                CheckFieldsPokemon(p_Pokemon);

                // Remove espaços à esquerda e à direita
                p_Pokemon.Nome = p_Pokemon.Nome.Trim();


                objDal.EditPokemon(p_Pokemon);
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

        public void InsertPokemon(DtoPokemon p_Pokemon)
        {
            try
            {
                CheckFieldsPokemon(p_Pokemon);

                // Remove espaços à esquerda e à direita
                p_Pokemon.Nome = p_Pokemon.Nome.Trim();


                objDal.InsertPokemon(p_Pokemon);
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

        

        private void CheckFieldsPokemon(DtoPokemon p_Pokemon)
        {
            // Validações de campo são obrigatórias na camada DLL
            // mesmo que já tenham sido feitas na camada PL
            if (p_Pokemon.Nome.Trim() == String.Empty)
            {
                Exception ex = new Exception("O campo Nome é obrigatório");

                // Add Logged flag
                ex.Data.Add("Logged", "Business");

                throw ex;
            }





            if (p_Pokemon.NomeTipo == null)
            {
                Exception ex = new Exception("O campo nome é obrigatório");

                // Add Logged flag
                ex.Data.Add("Logged", "Business");

                throw ex;
            }


        }

        /// Tipo
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public List<DtoTipo> SelectTipo()
        {
            try
            {
                List<DtoTipo> lstTipos = null;

                lstTipos = objDal.SelectTipo();

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

        public DtoTipo SelectTipo(int p_IdTipo)
        {
            try
            {
                DtoTipo objTipo = objDal.SelectTipo(p_IdTipo);

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

        public void EditTipo(DtoTipo p_Tipo)
        {
            try
            {
                CheckFieldsTipo(p_Tipo);

                // Remove espaços à esquerda e à direita
                p_Tipo.Nome = p_Tipo.Nome.Trim();

                objDal.EditTipo(p_Tipo);
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

        public void InsertTipo(DtoTipo p_Tipo)
        {
            try
            {
                CheckFieldsTipo(p_Tipo);

                // Remove espaços à esquerda e à direita
                p_Tipo.Nome = p_Tipo.Nome.Trim();


                objDal.InsertTipo(p_Tipo);
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

        private void CheckFieldsTipo(DtoTipo p_Tipo)
        {
            // Validações de campo são obrigatórias na camada DLL
            // mesmo que já tenham sido feitas na camada PL
            if (p_Tipo.Nome.Trim() == String.Empty)
            {
                Exception ex = new Exception("O campo Nome é obrigatório");

                // Add Logged flag
                ex.Data.Add("Logged", "Business");

                throw ex;
            }
        }

        public List<DtoTipo2> SelectTipo2()
        {
            try
            {
                List<DtoTipo2> lstTipo2s = null;

                lstTipo2s = objDal.SelectTipo2();

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

        public DtoTipo2 SelectTipo2(int p_IdTipo2)
        {
            try
            {
                DtoTipo2 objTipo2 = objDal.SelectTipo2(p_IdTipo2);

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

        public void EditTipo2(DtoTipo2 p_Tipo2)
        {
            try
            {
                CheckFieldsTipo2(p_Tipo2);

                // Remove espaços à esquerda e à direita
                p_Tipo2.Nome = p_Tipo2.Nome.Trim();

                objDal.EditTipo2(p_Tipo2);
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

        public void InsertTipo2(DtoTipo2 p_Tipo2)
        {
            try
            {
                CheckFieldsTipo2(p_Tipo2);

                // Remove espaços à esquerda e à direita
                p_Tipo2.Nome = p_Tipo2.Nome.Trim();


                objDal.InsertTipo2(p_Tipo2);
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

        private void CheckFieldsTipo2(DtoTipo2 p_Tipo2)
        {
            // Validações de campo são obrigatórias na camada DLL
            // mesmo que já tenham sido feitas na camada PL
            if (p_Tipo2.Nome.Trim() == String.Empty)
            {
                Exception ex = new Exception("O campo Nome é obrigatório");

                // Add Logged flag
                ex.Data.Add("Logged", "Business");

                throw ex;
            }


        }
        #endregion METHODS
    }
}
