<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Public.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Login ID="LoginIn" runat="server" DestinationPageUrl="~/Pages/Public/Default.aspx" CreateUserText="Criar usuário" CreateUserUrl="~/Pages/Public/CreateUser.aspx" LoginButtonText="Acessar" PasswordLabelText="Senha:" RememberMeText="Lembrar na próxima vez" TitleText="Acesse sua conta" UserNameLabelText="Usuário:" PasswordRecoveryText="Recuperar senha" PasswordRecoveryUrl="~/Pages/Public/PasswordRecovery.aspx">
    </asp:Login>
</asp:Content>
