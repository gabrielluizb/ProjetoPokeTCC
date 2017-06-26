<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditInsertPokemon.aspx.cs" Inherits="PokeTCC.Pokemon.EditInsertPokemon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edit Pokemon</h2>

    <asp:Table ID="tbPokemon" runat="server" BorderWidth="2px" BackColor="Red">
        <asp:TableRow ID="trIdPokemon" runat="server">
            <asp:TableCell><label ID="lbIdPokemon">IdPokemon:</label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtIdPokemon" runat="server" Enabled="False" Width="320px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trNumPokedex" runat="server">
            <asp:TableCell><label ID="lbNumPokedex">NumPokedex:</label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNumPokedex" runat="server" AutoPostBack="True" OnTextChanged="txtNumPokedex_TextChanged" Width="320px" TabIndex="1"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lbMsgNumPokedex" runat="server"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trNome" runat="server">
            <asp:TableCell><label ID="lbNome">Nome:</label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNome" runat="server" AutoPostBack="True" OnTextChanged="txtNome_TextChanged" Width="320px" TabIndex="1"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lbMsgNome" runat="server"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trTipo" runat="server">
            <asp:TableCell><label ID="lbTipo">Tipo:</label></asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlTipo" runat="server" DataValueField="IdTipo" DataTextField="Nome" TabIndex="5"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btTipo" runat="server" OnClick="btTipo_Click" Text="..." />
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trTipo2" runat="server">
            <asp:TableCell><label ID="lbTipo2">Tipo2:</label></asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlTipo2" runat="server" DataValueField="IdTipo2" DataTextField="Nome" TabIndex="6"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btTipo2" runat="server" OnClick="btTipo2_Click" Text="..." />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lbMsgTipo" runat="server"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trComandos" runat="server">
            <asp:TableCell>
                <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" TabIndex="7" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" TabIndex="8" />
            </asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lbErrorMesssage" runat="server"></asp:Label>
</asp:Content>
