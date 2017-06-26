<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tipo2.aspx.cs" Inherits="PokeTCC.Tipo2.Tipo2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Cadastro de Tipo2</h2>
    <div class="jumbotron">
        <%--
            Se usar a opção de <Columns> dentro do grid view, deverá usar também AutoGenerateColumns="False"
        --%>
        <asp:GridView
            ID="gvTipo2"
            runat="server"
            AutoGenerateColumns="false"
            Font-Names="Arial"
            Font-Size="40pt"
            AllowPaging="true"
            OnPageIndexChanging="gvTipo2_OnPaging"
            PageSize="9"
            AllowSorting="true"
            OnSorting="gvTipo2_OnSorting"
            OnRowEditing="gvTipo2_OnRowEditing"
            DataKeyNames="IdTipo2"
            ShowFooter="True" BackColor="Red" OnRowDataBound="gvTipo2_RowDataBound" BorderColor="Red">

            <HeaderStyle Font-Size="Smaller" BackColor="Red" />


            <Columns>
                <%-- 
                    DataField = nome do campo, como ele vem do select
                    HeaderText = nome do campo, como vc quer quer apareça
                    DataFormatString = Formatação do campo
                    Veja mais formatações em https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.boundfield.dataformatstring.aspx
                --%>

                <asp:BoundField DataField="IdTipo2"
                    HeaderText="IdTipo2"
                    ReadOnly="True" />
                <asp:BoundField DataField="Nome"
                    HeaderText="Nome"
                    SortExpression="Nome"
                    DataFormatString="{0}" />                
                <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <asp:LinkButton ID="editButton"
                            runat="server"
                            CommandName="Edit"
                            Text="Editar" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="addButton"
                            runat="server"
                            CommandName="Add"
                            OnClick="addButton_Click"
                            Text="Adicionar" />
                    </FooterTemplate>
                </asp:TemplateField>

                

            </Columns>

            <PagerSettings
                Mode="NextPreviousFirstLast"
                PreviousPageText="<img src='../Images/seta_esq.png' border='0' title='Página Anterior'/>"
                NextPageText="<img src='../Images/seta_dir.png' border='0' title='Próxima Página'/>"
                FirstPageText="<img src='../Images/seta_pri.png' border='0' title='Primeira Página'/>"
                LastPageText="<img src='../Images/seta_ult.png' border='0' title='Última Página'/>"
                PageButtonCount="1" />

            <HeaderStyle BackColor="Red" ForeColor="Yellow" HorizontalAlign="Left"></HeaderStyle>
            <RowStyle Font-Size="Smaller" />
            <FooterStyle Font-Size="Smaller" />
            <PagerStyle Font-Size="Smaller" />
        </asp:GridView>
        <br />
        <asp:Label ID="lbErrorMesssage2" runat="server"></asp:Label>
    </div>
</asp:Content>
