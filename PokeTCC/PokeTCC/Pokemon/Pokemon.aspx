<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pokemon.aspx.cs" Inherits="PokeTCC.Pokemon.Pokemon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server" >
   
    <h2><asp:Localize runat=server ID="TitleMessage" Text="Cadastro de Pokemon!" meta:resourcekey="TitleMessage" />
        </h2>
    <div class="jumbotron" >
        <%--
            Se usar a opção de <Columns> dentro do grid view, deverá usar também AutoGenerateColumns="False"
        --%>
        <br />
        
    </div>
    <h2>
       <asp:GridView
            ID="gvPokemon"
            runat="server"
            AutoGenerateColumns="False"
            Font-Names="Arial"
            Font-Size="40pt"
            ForeColor="Black"
            AllowPaging="True"
            OnPageIndexChanging="gvPokemon_OnPaging"
            PageSize="10"
            AllowSorting="True"
            OnSorting="gvPokemon_OnSorting"
            OnRowEditing="gvPokemon_OnRowEditing"
            OnRowDataBound="gvPokemon_OnRowDataBound"
            DataKeyNames="IdPokemon"
            ShowFooter="True"
            Height="1000px" Width="900px"
            BorderWidth="10px" BorderColor="Red" CellSpacing="10" HorizontalAlign="Right" BackColor="Red" BorderStyle="Solid" >

            <HeaderStyle Font-Size="Smaller" />
            
            <Columns>
                <%-- 
                    DataField = nome do campo, como ele vem do 
                    HeaderText = nome do campo, como vc quer quer apareça
                    DataFormatString = Formatação do campo
                    Veja mais formatações em https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.boundfield.dataformatstring.aspx
                --%>

                <asp:BoundField DataField="IdPokemon"
                    HeaderText=" IdPokemon"
                    ReadOnly="True"
                    meta:resourcekey="gvPokemon_IdPokemon" 
                    ControlStyle-BorderColor="Red" >
                </asp:BoundField>

                <asp:BoundField DataField="NumPokedex"
                    HeaderText=" Nº da Pokédex"
                    SortExpression="NumPokedex"
                    DataFormatString="{0}"
                    meta:resourcekey="gvPokemon_NumPokedex"
                    ItemStyle-BorderColor="Red" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center" >
                </asp:BoundField>

                <asp:BoundField DataField="Nome"
                    HeaderText="Nome"
                    SortExpression="Nome"
                    DataFormatString="{0}"
                    meta:resourcekey="gvPokemon_Nome"
                    ItemStyle-BorderColor="Red" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center"  >
                </asp:BoundField>


                <asp:BoundField DataField="nomeTipo"
                    HeaderText="Tipo"
                    SortExpression="Tipo"
                    DataFormatString="{0}"
                    meta:resourcekey="gvPokemon_NomeTipo" 
                    ItemStyle-BorderColor="Red" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center" >
                </asp:BoundField>

                <asp:BoundField DataField="nomeTipo2"
                    HeaderText="Tipo 2"
                    SortExpression="Tipo2"
                    DataFormatString="{0}"
                    meta:resourcekey="gvPokemon_NomeTipo2"
                    ItemStyle-BorderColor="Red" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center"  ItemStyle-BorderStyle="Solid" >
                </asp:BoundField>
                <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <asp:LinkButton ID="editButton"
                            runat="server"
                            CommandName="Edit"
                            Text="Editar"
                            meta:resourcekey="editButton" />
                    </ItemTemplate>                    
                    <FooterTemplate>
                        <asp:LinkButton ID="addButton"
                            runat="server"
                            CommandName="Add"
                            OnClick="addButton_Click"
                            Text="Adicionar"
                            meta:resourcekey="addButton" />
                    </FooterTemplate>
                </asp:TemplateField> 
                          
            </Columns>
                
            <PagerSettings
                Mode="NextPreviousFirstLast"
                PreviousPageText="<img src='../Images/seta_esq.png' border='0' title='Página Anterior' />"
                NextPageText="<img src='../Images/seta_dir.png' border='0' title='Próxima Página'/>"
                FirstPageText="<img src='../Images/seta_pri.png' border='0' title='Primeira Página'/>"
                LastPageText="<img src='../Images/seta_ult.png' border='0' title='Última Página'/>"
                PageButtonCount="1"/>

            <HeaderStyle BackColor="Red" ForeColor="Yellow" HorizontalAlign="Center"></HeaderStyle>
            <RowStyle Font-Size="Smaller" BorderColor="Red" HorizontalAlign="Center" />
            <FooterStyle Font-Size="Smaller"/>
            <PagerStyle Font-Size="Smaller" BackColor="Red" Width="40" />
        </asp:GridView>
        <asp:Label ID="lbErrorMesssage" runat="server"></asp:Label>
        </h2>
    </asp:Content>



