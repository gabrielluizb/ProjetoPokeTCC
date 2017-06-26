using prjBll;
using prjDto;
using System;
using System.Configuration;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using X.Web.UI;

namespace PokeTCC.Tipo
{
    public partial class EditInsertTipo : X.Web.UI.PersistentStatePage
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
        public EditInsertTipo()
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
                    // Pode ser a página Tipo.aspx ou a página EditInsertCliente
                    ViewState["PreviousPageUrl"] = Request.UrlReferrer.ToString();

                    int IdTipo = 0;

                    // Define se os campos Id serão mostrados ou não
                    this.trIdTipo.Visible = Convert.ToBoolean(ConfigurationManager.AppSettings["showId"].ToString());

                    // Se houve passagem do valor de IdTipo faz edit.
                    if (int.TryParse(Request.QueryString["IdTipo"], out IdTipo))
                    {
                        // Coleta os dados do database
                        DtoTipo Tipo = objBll.SelectTipo(IdTipo);

                        // Preenche o form com os dados vindos do database
                        this.txtIdTipo.Text = Tipo.IdTipo.ToString();
                        this.txtNome.Text = Tipo.Nome;
                        
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
                // Para insert IdTipo = 0
                int IdTipo = 0;
                int.TryParse(Request.QueryString["IdTipo"], out IdTipo);

                if (txtNome.Text.Trim() == "")
                {
                    this.lbMsgNome.Text = this.MsgNome;
                    blnErro = true;
                }

                

                if (!blnErro)
                {
                    // Carrega os campos do form em um objeto do tipo DtoTipo
                    DtoTipo p_Tipo = new DtoTipo(IdTipo, txtNome.Text);

                    // Se o campo txtIdTipo não estiver em branco, faz edit.
                    // Senão, faz insert
                    if (txtIdTipo.Text != "")
                        objBll.EditTipo(p_Tipo);
                    else
                        objBll.InsertTipo(p_Tipo);

                    // Volta para a página Tipo.aspx
                    //Response.Redirect(ViewState["PreviousPageUrl"].ToString());

                    // Caso a página anterior seja a EditInsertCliente, volta para ela 
                    // com o Tipo salvo
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
            // com o Tipo salvo
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