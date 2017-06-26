using prjBll;
using prjDto;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data;
namespace PokeTCC.Pokemon
{
    public partial class Pokemon : System.Web.UI.Page
    {
        #region PROPERTIES
        // set log4net interface
        private log4net.ILog logger;
        private Bll objBll = null;
        // Mensagem de erro para o usuário final
        private string SystemErrorMessage = String.Empty;
        #endregion PROPERTIES

        #region CONSTRUCTOR
        public Pokemon()
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
            this.gvPokemon.Columns[0].Visible = Convert.ToBoolean(ConfigurationManager.AppSettings["showId"].ToString());

            // Número de registros por página no GridView gvPokemon
            this.gvPokemon.PageSize = int.Parse(ConfigurationManager.AppSettings["PokemonPageSize"].ToString());
             
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

        private void BindData(List<DtoPokemon> p_list)
        {
            try
            {
                // Define a fonte de dados do grid view
                gvPokemon.DataSource = p_list;

                // Cola os dados no grid view
                gvPokemon.DataBind();

                
                
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

        protected List<DtoPokemon> GetData()
        {
            try
            {
                return this.objBll.SelectPokemon();
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
        protected void gvPokemon_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.Cells.Count >= 4)
                {
                    if (e.Row.Cells[3].Text == "Grass")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(255, 120, 200, 80);
                    }
                    if (e.Row.Cells[3].Text == "Bug")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(168, 184, 32);
                    }
                    if (e.Row.Cells[3].Text == "Fire")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(240, 128, 48);
                    }
                    if (e.Row.Cells[3].Text == "Water")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(104, 144, 240);
                    }
                    if (e.Row.Cells[3].Text == "Ice")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(152, 216, 216);
                    }
                    if (e.Row.Cells[3].Text == "Electric")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(248, 208, 48);
                    }
                    if (e.Row.Cells[3].Text == "Psychic")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(248, 88, 136);
                    }
                    if (e.Row.Cells[3].Text == "Ghost")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 152);
                    }
                    if (e.Row.Cells[3].Text == "Poison")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(160, 64, 160);
                    }
                    if (e.Row.Cells[3].Text == "Fighting")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(192, 48, 40);
                    }
                    if (e.Row.Cells[3].Text == "Ground")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(224, 192, 104);
                    }
                    if (e.Row.Cells[3].Text == "Rock")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(184, 160, 56);
                    }
                    if (e.Row.Cells[3].Text == "Dark")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(112, 88, 72);
                    }
                    if (e.Row.Cells[3].Text == "Steel")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(184, 184, 208);
                    }
                    if (e.Row.Cells[3].Text == "Normal")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(168, 168, 120);
                    }
                    if (e.Row.Cells[3].Text == "Flying")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(168, 144, 240);
                    }
                    if (e.Row.Cells[3].Text == "Fairy")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(238, 153, 172);
                    }
                    if (e.Row.Cells[3].Text == "Dragon")
                    {
                        e.Row.BackColor = System.Drawing.Color.FromArgb(112, 56, 248);
                    }
                }
                if (e.Row.Cells.Count >= 5)
                {

                    if (e.Row.Cells[4].Text == "Grass")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(120, 200, 80);
                    }
                    if (e.Row.Cells[4].Text == "Bug")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(168, 184, 32);
                    }
                    if (e.Row.Cells[4].Text == "Fire")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(240, 128, 48);
                    }
                    if (e.Row.Cells[4].Text == "Water")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(104, 144, 240);
                    }
                    if (e.Row.Cells[4].Text == "Ice")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(152, 216, 216);
                    }
                    if (e.Row.Cells[4].Text == "Electric")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(248, 208, 48);
                    }
                    if (e.Row.Cells[4].Text == "Psychic")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(248, 88, 136);
                    }
                    if (e.Row.Cells[4].Text == "Ghost")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(112, 88, 152);
                    }
                    if (e.Row.Cells[4].Text == "Poison")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(160, 64, 160);
                    }
                    if (e.Row.Cells[4].Text == "Fighting")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(192, 48, 40);
                    }
                    if (e.Row.Cells[4].Text == "Ground")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(224, 192, 104);
                    }
                    if (e.Row.Cells[4].Text == "Rock")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(184, 160, 56);
                    }
                    if (e.Row.Cells[4].Text == "Dark")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(112, 88, 72);
                    }
                    if (e.Row.Cells[4].Text == "Steel")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(184, 184, 208);
                    }
                    if (e.Row.Cells[4].Text == "Normal")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(168, 168, 120);
                    }
                    if (e.Row.Cells[4].Text == "Flying")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(168, 144, 240);
                    }
                    if (e.Row.Cells[4].Text == "Fairy")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(238, 153, 172);
                    }
                    if (e.Row.Cells[4].Text == "Dragon")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.FromArgb(112, 56, 248);
                    }
                    if (e.Row.Cells[4].Text == " ")
                    {
                        e.Row.Cells[4].BackColor = System.Drawing.Color.White;
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
        protected void gvPokemon_OnSorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                // Retorna à página 0
                gvPokemon.PageIndex = 0;

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
                List<DtoPokemon> lst = this.GetData();

                // Reordena o list
                switch (sortExpression)
                {
                    case "NumPokedex":
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.NumPokedex).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.NumPokedex).ToList();
                            break;
                        }
                    case "Nome":
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.Nome).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.Nome).ToList();
                            break;
                        }
                    case "Tipo":
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.NomeTipo).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.NomeTipo).ToList();
                            break;
                        }
                    case "Tipo2":
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.NomeTipo2).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.NomeTipo2).ToList();
                            break;
                        }
                    default:
                        {
                            if (ViewState["SortDirection"].ToString() == "ASC")
                                lst = lst.OrderBy(o => o.NumPokedex).ToList();
                            else
                                lst = lst.OrderByDescending(o => o.NumPokedex).ToList();
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
        //protected void gvPokemon_OnCheckedChanged(Object sender, EventArgs e)
        //{
        //    try
        //    {
                
        //        //sender.
        //    }
        //    catch (Exception ex)
        //    {
        //        if (ex.Data["Logged"] == null)
        //        {
        //            // Log the error message in file
        //            logger.Error("Message: " + ex.Message, ex);

        //            // Add Logged flag
        //            ex.Data.Add("Logged", "System");
        //        }

        //        lbErrorMesssage.Text = SystemErrorMessage;
        //    }
        //}

        protected void gvPokemon_OnPaging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                // Pega o próximo indice de página no data table
                gvPokemon.PageIndex = e.NewPageIndex;

                if (Session["SortedView"] != null)
                {
                    // Coloca os dados do data table no grid view
                    BindData((List<DtoPokemon>)Session["SortedView"]);
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
        
        protected void gvPokemon_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                // Redireciona para a página de edição com o valor do IdPokemon adicionado à URL
                Response.Redirect("EditInsertPokemon.aspx?IdPokemon=" + gvPokemon.DataKeys[e.NewEditIndex].Values["IdPokemon"].ToString(), false);
                //RedirectSavingPageState("EditInsertPokemon.aspx?IdPokemon=" + gvPokemon.DataKeys[e.NewEditIndex].Values["IdPokemon"].ToString());

                // Obtém os dados do database
                List<DtoPokemon> lst = this.GetData();

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
                Response.Redirect("EditInsertPokemon.aspx");
                //RedirectSavingPageState("EditInsertPokemon.aspx");
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

        

        /// <summary>
        /// This Method allow use resources to delete confirmation message
        /// The message 'deleteConfirm' is stored in Pokemon.aspx.resx file
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void gvPokemon_OnRowCreated(Object sender, GridViewRowEventArgs e)
        //{
        //    try
        //    {
        //        if (e.Row.RowType == DataControlRowType.DataRow)
        //        {
        //            LinkButton button = (LinkButton)e.Row.FindControl("deleteButton");
        //            if (button != null)
        //                button.OnClientClick = String.Format("return confirm('{0}')", GetLocalResourceObject("deleteConfirm").ToString());
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        if (ex.Data["Logged"] == null)
        //        {
        //            // Log the error message in file
        //            logger.Error("Message: " + ex.Message, ex);
        //
        //            // Add Logged flag
        //            ex.Data.Add("Logged", "System");
        //        }
        //
        //        lbErrorMesssage.Text = SystemErrorMessage;
        //    }
        //}

        #endregion METHODS
    }
}