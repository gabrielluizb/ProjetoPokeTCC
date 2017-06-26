using prjBll;
using prjDto;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web.UI.WebControls;

namespace PokeTCC.Tipo
{
    public partial class Tipo : System.Web.UI.Page
    {
       #region PROPERTIES
        // set log4net interface
        private log4net.ILog logger;

        private Bll objBll = null;

        // Mensagem de erro para o usuário final
        private string SystemErrorMessage = String.Empty;
        #endregion PROPERTIES

        #region CONSTRUCTOR
        public Tipo()
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
            // Define se os campos Id serão mostrados ou não
            this.gvTipo.Columns[0].Visible = Convert.ToBoolean(ConfigurationManager.AppSettings["showId"].ToString());

            // Número de registros por página no GridView gvTipo
            this.gvTipo.PageSize = int.Parse(ConfigurationManager.AppSettings["TipoPageSize"].ToString());

            try
            {
                if (!IsPostBack)
                    // Coloca os dados do data table no grid view
                    BindData(this.GetData());
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

        private void BindData(List<DtoTipo> p_list)
        {
            try
            {
                // Define a fonte de dados do grid view
                gvTipo.DataSource = p_list;

                // Cola os dados no grid view
                gvTipo.DataBind();
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

        protected List<DtoTipo> GetData()
        {
            try
            {
                return this.objBll.SelectTipo();
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

                return null;
            }
        }
        protected void gvTipo_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.Cells[1].Text == "Grass")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(255, 120, 200, 80);
                }
                if (e.Row.Cells[1].Text == "Bug")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 184, 32);
                }
                if (e.Row.Cells[1].Text == "Fire")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(240, 128, 48);
                }
                if (e.Row.Cells[1].Text == "Water")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(104, 144, 240);
                }
                if (e.Row.Cells[1].Text == "Ice")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(152, 216, 216);
                }
                if (e.Row.Cells[1].Text == "Electric")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(248, 208, 48);
                }
                if (e.Row.Cells[1].Text == "Psychic")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(248, 88, 136);
                }
                if (e.Row.Cells[1].Text == "Ghost")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 152);
                }
                if (e.Row.Cells[1].Text == "Poison")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(160, 64, 160);
                }
                if (e.Row.Cells[1].Text == "Fighting")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(192, 48, 40);
                }
                if (e.Row.Cells[1].Text == "Ground")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(224, 192, 104);
                }
                if (e.Row.Cells[1].Text == "Rock")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(184, 160, 56);
                }
                if (e.Row.Cells[1].Text == "Dark")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 72);
                }
                if (e.Row.Cells[1].Text == "Steel")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(184, 184, 208);
                }
                if (e.Row.Cells[1].Text == "Normal")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 168, 120);
                }
                if (e.Row.Cells[1].Text == "Flying")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 144, 240);
                }
                if (e.Row.Cells[1].Text == "Fairy")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(238, 153, 172);
                }
                if (e.Row.Cells[1].Text == "Dragon")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 56, 248);
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

        protected void gvTipo_OnSorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                // Retorna à página 0
                gvTipo.PageIndex = 0;

                string sortExpression = e.SortExpression;

                // Inverte a direção do sort
                if (ViewState["SortDirection"] == null)
                {
                    ViewState["SortDirection"] = "ASC";
                }
                else
                {
                    if (ViewState["SortDirection"].ToString() == "ASC")
                        ViewState["SortDirection"] = "DESC";
                    else
                        ViewState["SortDirection"] = "ASC";
                }

                // Gera um data table e carrega os dados
                List<DtoTipo> lst = this.GetData();

                // Reordena o list
                switch (sortExpression)
                {
                    case "Nome":
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.Nome).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.Nome).ToList();
                            break;
                        }
                    default:
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.Nome).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.Nome).ToList();
                            break;
                        }
                }

                // Guarda o list já ordenado na variável de seção
                Session["SortedView"] = lst;

                // Coloca os dados do data table no grid view
                BindData(lst);
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

        protected void gvTipo_OnPaging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                // Pega o próximo indice de página no data table
                gvTipo.PageIndex = e.NewPageIndex;

                if (Session["SortedView"] != null)
                {
                    // Coloca os dados do data table no grid view
                    BindData((List<DtoTipo>)Session["SortedView"]);
                }
                else
                {
                    // Coloca os dados do data table no grid view
                    BindData(this.GetData());
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

        

        protected void gvTipo_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                // Redireciona para a página de edição com o valor do IdTipo adicionado à URL
                Response.Redirect("EditInsertTipo.aspx?IdTipo=" + gvTipo.DataKeys[e.NewEditIndex].Values["IdTipo"].ToString(), false);
                //RedirectSavingPageState("EditInsertTipo.aspx?IdTipo=" + gvTipo.DataKeys[e.NewEditIndex].Values["IdTipo"].ToString());

                // Obtém os dados do database
                List<DtoTipo> lst = this.GetData();

                // Cola os dados no GridView
                BindData(lst);
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

        protected void addButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Redireciona para a página de edição
                Response.Redirect("EditInsertTipo.aspx");
                //RedirectSavingPageState("EditInsertTipo.aspx");
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
        #endregion METHODS

        

        protected void gvTipo_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.Cells.Count >= 2)
                { 
                if (e.Row.Cells[1].Text == "Grass")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(255, 120, 200, 80);
                }
                if (e.Row.Cells[1].Text == "Bug")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 184, 32);
                }
                if (e.Row.Cells[1].Text == "Fire")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(240, 128, 48);
                }
                if (e.Row.Cells[1].Text == "Water")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(104, 144, 240);
                }
                if (e.Row.Cells[1].Text == "Ice")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(152, 216, 216);
                }
                if (e.Row.Cells[1].Text == "Electric")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(248, 208, 48);
                }
                if (e.Row.Cells[1].Text == "Psychic")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(248, 88, 136);
                }
                if (e.Row.Cells[1].Text == "Ghost")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 152);
                }
                if (e.Row.Cells[1].Text == "Poison")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(160, 64, 160);
                }
                if (e.Row.Cells[1].Text == "Fighting")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(192, 48, 40);
                }
                if (e.Row.Cells[1].Text == "Ground")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(224, 192, 104);
                }
                if (e.Row.Cells[1].Text == "Rock")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(184, 160, 56);
                }
                if (e.Row.Cells[1].Text == "Dark")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 72);
                }
                if (e.Row.Cells[1].Text == "Steel")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(184, 184, 208);
                }
                if (e.Row.Cells[1].Text == "Normal")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 168, 120);
                }
                if (e.Row.Cells[1].Text == "Flying")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(168, 144, 240);
                }
                if (e.Row.Cells[1].Text == "Fairy")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(238, 153, 172);
                }
                if (e.Row.Cells[1].Text == "Dragon")
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(112, 56, 248);
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
    }
}