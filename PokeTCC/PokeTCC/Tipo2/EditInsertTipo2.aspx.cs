using prjBll;
using prjDto;
using System;
using System.Configuration;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using X.Web.UI;

namespace PokeTCC.Tipo2
{
    public partial class EditInsertTipo2 : X.Web.UI.PersistentStatePage
    {
        #region PROPERTIES
        // set log4net interface
        private log4net.ILog logger;

        private Bll objBll = null;

        // Mensagem de erro para o usuário final
        private string SystemErrorMessage = String.Empty;

        // Mensagens de erro de operação para o usuário
        private string MsgNome = "O campo Nome é obrigatório";
        
        #endregion PROPERTIES

        #region CONSTRUCTOR
        public EditInsertTipo2()
        {
            // Set log4net configurations
            this.logger = log4net.LogManager.GetLogger("LogInFile");

            // Get user friendly system error message
            SystemErrorMessage = ConfigurationManager.AppSettings["SystemErrorMesssage"].ToString();

            this.objBll = new Bll();
        }
        #endregion CONSTRUCTOR

        #region METHODS
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //this.dcDataNasc.VisibleDate = DateTime.Today;
                if (!Page.IsPostBack)
                {
                    // Salva a url da página anterior
                    // Pode ser a página Tipo2.aspx ou a página EditInsertCliente
                    ViewState["PreviousPageUrl"] = Request.UrlReferrer.ToString();

                    int IdTipo2 = 0;

                    // Define se os campos Id serão mostrados ou não
                    this.trIdTipo2.Visible = Convert.ToBoolean(ConfigurationManager.AppSettings["showId"].ToString());

                    // Se houve passagem do valor de IdTipo2 faz edit.
                    if (int.TryParse(Request.QueryString["IdTipo2"], out IdTipo2))
                    {
                        // Coleta os dados do database
                        DtoTipo2 Tipo2 = objBll.SelectTipo2(IdTipo2);

                        // Preenche o form com os dados vindos do database
                        this.txtIdTipo2.Text = Tipo2.IdTipo2.ToString();
                        this.txtNome.Text = Tipo2.Nome;
                        
                    }
                }
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

                lbErrorMesssage.Text = SystemErrorMessage;
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            try
            {
                // Controle de erros
                Boolean blnErro = false;

                // Obtém o IdClinete do form em caso de edit
                // Para insert IdTipo2 = 0
                int IdTipo2 = 0;
                int.TryParse(Request.QueryString["IdTipo2"], out IdTipo2);

                if (txtNome.Text.Trim() == "")
                {
                    this.lbMsgNome.Text = this.MsgNome;
                    blnErro = true;
                }

                

                if (!blnErro)
                {
                    // Carrega os campos do form em um objeto do tipo DtoTipo2
                    DtoTipo2 p_Tipo2 = new DtoTipo2(IdTipo2, txtNome.Text);

                    // Se o campo txtIdTipo2 não estiver em branco, faz edit.
                    // Senão, faz insert
                    if (txtIdTipo2.Text != "")
                        objBll.EditTipo2(p_Tipo2);
                    else
                        objBll.InsertTipo2(p_Tipo2);

                    // Volta para a página Tipo2.aspx
                    //Response.Redirect(ViewState["PreviousPageUrl"].ToString());

                    // Caso a página anterior seja a EditInsertCliente, volta para ela 
                    // com o Tipo2 salvo
                    // Este método substitui Response.Redirect
                    RedirectToSavedPage(ViewState["PreviousPageUrl"].ToString(), false);
                }
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

                if (ex.Data["Logged"].ToString() == "System")
                {
                    lbErrorMesssage.Text = SystemErrorMessage;
                }

                if (ex.Data["Logged"].ToString() == "Business")
                {
                    lbErrorMesssage.Text = ex.Message;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Caso a página anterior seja a EditInsertCliente, volta para ela 
            // com o Tipo2 salvo
            RedirectToSavedPage(ViewState["PreviousPageUrl"].ToString(), false);
        }

        protected void txtNome_TextChanged(object sender, EventArgs e)
        {
            if (txtNome.Text.Trim() == "")
                this.lbMsgNome.Text = this.MsgNome;
        }

        
        #endregion METHODS
    }
}