<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditInsertTipo.aspx.cs" Inherits="PokeTCC.Tipo.EditInsertTipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edit Tipo</h2>
    <asp:Table ID="tbTipo" runat="server">
        <asp:TableRow ID="trIdTipo" runat="server" BackColor="Red">
            <asp:TableCell><label ID="lbIdCliente">IdTipo:</label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtIdTipo" runat="server" Enabled="False" Width="320px"></asp:TextBox></asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="trNome" runat="server" >
            <asp:TableCell><label ID="lbNome">Nome:</label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtNome" runat="server" AutoPostBack="True" OnTextChanged="txtNome_TextChanged" Width="320px"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:Label ID="lbMsgNome" runat="server"></asp:Label></asp:TableCell>
        </asp:TableRow>

        

        <asp:TableRow ID="trComandos" runat="server" >
            <asp:TableCell><asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" /></asp:TableCell>
            <asp:TableCell><asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" /></asp:TableCell>
            <asp:TableCell>&nbsp;</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label ID="lbErrorMesssage" runat="server"></asp:Label>
</asp:Content>
