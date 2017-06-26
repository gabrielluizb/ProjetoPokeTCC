using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization.Formatters.Binary;

namespace prjDto
{
    public class DtoTipo2
    {
         #region PROPERTIES

        // set log4net interface
        private log4net.ILog logger;

        public int IdTipo2 { get; set; }
        public string Nome { get; set; }
        
        #endregion PROPERTIES

        #region CONSTRUCTORS
        public DtoTipo2(DataRow row)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdTipo2 = int.Parse(row["id_Tipo2"].ToString());
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

        public DtoTipo2(int p_IdTipo2
                     , string p_Nome)
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            try
            {
                this.IdTipo2 = p_IdTipo2;
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
