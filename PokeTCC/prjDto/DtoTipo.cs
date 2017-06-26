using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization.Formatters.Binary;

namespace prjDto
{
   public class DtoTipo
    {
         #region PROPERTIES

        // set log4net interface
        private log4net.ILog logger;

        public int IdTipo { get; set; }
        public string Nome { get; set; }
        
        #endregion PROPERTIES

        #region CONSTRUCTORS
        public DtoTipo(DataRow row)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdTipo = int.Parse(row["id_Tipo"].ToString());
                this.Nome = row["nome"].ToString();
                
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

        public DtoTipo(int p_IdTipo
                     , string p_Nome)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdTipo = p_IdTipo;
                this.Nome = p_Nome;
                
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
