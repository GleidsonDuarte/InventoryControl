<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Public.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:CreateUserWizard ID="CreateUserInventoryControl" runat="server" BorderStyle="None" ConfirmPasswordLabelText="Confirmar senha:" CreateUserButtonText="Criar usuário" PasswordLabelText="Senha:" UserNameLabelText="Nome usuário">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" Title="Criar nova conta" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
