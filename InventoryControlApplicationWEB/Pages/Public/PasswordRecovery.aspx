<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Public.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:PasswordRecovery ID="RecoveryOfUserPassword" runat="server" SubmitButtonText="Enviar" SuccessPageUrl="~/Pages/Public/Default.aspx" SuccessText="Uma nova senha foi enviada para o e-mail cadastrado." UserNameInstructionText="Entre com o seu nome de usuário e receba uma nova senha por e-mail" UserNameLabelText="Nome do usuário" UserNameTitleText="Esqueceu sua senha?">
    </asp:PasswordRecovery>
</asp:Content>
