<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Public.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelButtonText="Cancelar" ChangePasswordButtonText="Alterar senha" ChangePasswordTitleText="Altere sua senha" ConfirmNewPasswordLabelText="Confirme a nova senha:" ConfirmPasswordCompareErrorMessage="Ao fazer a alteração, sua nova senha será usada para o login!" ContinueButtonText="Continuar" NewPasswordLabelText="Nova senha:" PasswordLabelText="Senha atual:" SuccessText="Sua senha foi alterada com sucesso!" SuccessTitleText="Concluída alteração de senha" CancelDestinationPageUrl="~/Pages/Public/Default.aspx" ContinueDestinationPageUrl="~/Pages/Public/Default.aspx">
    </asp:ChangePassword>
</asp:Content>
