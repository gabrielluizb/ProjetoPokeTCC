using prjBll;
using prjDto;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using X.Web.UI;

namespace PokeTCC.Pokemon
{
    public partial class EditInsertPokemon : X.Web.UI.PersistentStatePage
    {
        #region PROPERTIES
        // set log4net interface
        private log4net.ILog logger;

        private Bll objBll = null;

        // Mensagem de erro para o usuário final
        private string SystemErrorMessage = String.Empty;

        // Mensagens de erro de operação para o usuário
        private string MsgNumPokedex = "O campo Numero da Pokedex é obrigatório";
        private string MsgNome = "O campo Nome é obrigatório";
        private string MsgTipo = "Os Tipos não podem ser iguais";

        #endregion PROPERTIES

        #region CONSTRUCTOR
        public EditInsertPokemon()
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
                    // Deixar estático quando esta página puder ser chamada
                    // de mais de uma página
                    ViewState["PreviousPageUrl"] = "Pokemon.aspx";

                    int IdPokemon = 0;

                    // Define se os campos Id serão mostrados ou não
                    this.trIdPokemon.Visible = Convert.ToBoolean(ConfigurationManager.AppSettings["showId"].ToString());

                    // Se houve passagem do valor de IdPokemon faz edit.
                    if (int.TryParse(Request.QueryString["IdPokemon"], out IdPokemon))
                    {
                        // Coleta os dados do database
                        DtoPokemon Pokemon = objBll.SelectPokemon(IdPokemon);

                        // Preenche o form com os dados vindos do database
                        this.txtIdPokemon.Text = Pokemon.IdPokemon.ToString();
                        this.txtNumPokedex.Text = Pokemon.NumPokedex;
                        this.txtNome.Text = Pokemon.Nome;
 

                        // Freenche a DropDownList
                        List<DtoTipo> Tipos = objBll.SelectTipo();
                        this.ddlTipo.DataSource = Tipos;
                        ddlTipo.DataBind();
                        ddlTipo.SelectedValue = Pokemon.IdTipo.ToString();

                        List<DtoTipo2> Tipos2 = objBll.SelectTipo2();
                        this.ddlTipo2.DataSource = Tipos2;
                        ddlTipo2.DataBind();
                        ddlTipo2.SelectedValue = Pokemon.IdTipo2.ToString();
                    }
                    else
                    {
                        

                        // Seleciona a data atual como default
                       

                        // SEleciona o primeiro Tipo por padrão
                        List<DtoTipo> Tipos = objBll.SelectTipo();
                        this.ddlTipo.DataSource = Tipos;
                        ddlTipo.DataBind();
                        ddlTipo.SelectedIndex = 0;
                        List<DtoTipo2> Tipos2 = objBll.SelectTipo2();
                        this.ddlTipo2.DataSource = Tipos2;
                        ddlTipo2.DataBind();
                        ddlTipo2.SelectedIndex = 0;
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
                // Para insert IdPokemon = 0
                int IdPokemon = 0;
                int.TryParse(Request.QueryString["IdPokemon"], out IdPokemon);

                if (txtNome.Text.Trim() == "")
                {
                    this.lbMsgNome.Text = this.MsgNome;
                    blnErro = true;
                }

                if (txtNumPokedex.Text.Trim() == "")
                {
                    this.lbMsgNumPokedex.Text = this.MsgNumPokedex;
                    blnErro = true;
                }
                if(ddlTipo.Text == ddlTipo2.Text)
                {
                    this.lbMsgTipo.Text = this.MsgTipo;
                    blnErro = true;
                }

                if (!blnErro)
                {
                    

                    // Carrega os campos do form em um objeto do tipo DtoPokemon
                    DtoPokemon p_Pokemon = new DtoPokemon(IdPokemon, txtNumPokedex.Text, txtNome.Text,
                    int.Parse(ddlTipo.SelectedValue), ddlTipo.SelectedItem.ToString(), int.Parse(ddlTipo2.SelectedValue), ddlTipo2.SelectedItem.ToString());

                    // Se o campo txtIdPokemon não estiver em branco, faz edit.
                    // Senão, faz insert
                    if(txtIdPokemon.Text != "")
                        objBll.EditPokemon(p_Pokemon);
                    else
                        objBll.InsertPokemon(p_Pokemon);

                    // Volta para a página Pokemon.aspx
                    Response.Redirect(ViewState["PreviousPageUrl"].ToString());
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
            // Volta para a página Pokemon.aspx
            Response.Redirect(ViewState["PreviousPageUrl"].ToString());
        }

        protected void txtNome_TextChanged(object sender, EventArgs e)
        {
            if (txtNome.Text.Trim() == "")
                this.lbMsgNome.Text = this.MsgNome;
        }
        protected void txtNumPokedex_TextChanged(object sender, EventArgs e)
        {
            if (txtNumPokedex.Text.Trim() == "")
                this.lbMsgNumPokedex.Text = this.MsgNumPokedex;
        }
        

        // Define limites de mês e ano mínimo e máximo no calendário
       

        // Define limites de dia não maior que hoje no calendário
        

        protected void btTipo_Click(object sender, EventArgs e)
        {
            // Go to Insert page and saving page state
            RedirectSavingPageState("../Tipo/EditInsertTipo.aspx");
        }
        protected void btTipo2_Click(object sender, EventArgs e)
        {
            // Go to Insert page and saving page state
            RedirectSavingPageState("../Tipo/EditInsertTipo.aspx");
        }
        #endregion METHODS
    }
}