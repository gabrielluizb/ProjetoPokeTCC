using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization.Formatters.Binary;

namespace prjDto
{
    public class DtoPokemon
    {
        #region PROPERTIES

        // set log4net interface
        private log4net.ILog logger;

        public int IdPokemon { get; set; }
        public string NumPokedex { get; set; }
        public string Nome { get; set; }

        public int IdTipo { get; set; }
        public string NomeTipo { get; set; }

        public int IdTipo2 { get; set; }
        public string NomeTipo2 { get; set; }
        #endregion PROPERTIES

        #region CONSTRUCTORS
        public DtoPokemon(DataRow row)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdPokemon = int.Parse(row["id_pokemon"].ToString());
                this.NumPokedex = row["num_pokedex"].ToString();
                this.Nome = row["nome"].ToString();

                this.IdTipo = int.Parse(row["id_Tipo"].ToString());
                this.NomeTipo = row["Nome_Tipo"].ToString();

                this.IdTipo2 = int.Parse(row["id_Tipo2"].ToString());
                this.NomeTipo2 = row["Nome_Tipo2"].ToString();
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

        public DtoPokemon(int p_IdPokemon
                     , string p_NumPokedex
                     , string p_Nome
                     , int p_IdTipo
                     , string p_NomeTipo
                     , int p_IdTipo2
                     , string p_NomeTipo2)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdPokemon = p_IdPokemon;
                this.NumPokedex = p_NumPokedex;
                this.Nome = p_Nome;
                this.IdTipo = p_IdTipo;
                this.NomeTipo = p_NomeTipo;
                this.IdTipo2 = p_IdTipo2;
                this.NomeTipo2 = p_NomeTipo2;
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
        #endregion CONSTRUCTORS
    }
}
