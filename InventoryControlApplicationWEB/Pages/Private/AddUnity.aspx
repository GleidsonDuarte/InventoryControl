<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddUnity.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Private.AddUnity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UTP_UNITY_TYPE_ID" DataSourceID="SqlDataSourceUnityType" PageSize="2" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="UTP_UNITY_TYPE_ID" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="UTP_UNITY_TYPE_ID" />
        <asp:BoundField DataField="UTP_TYPE" HeaderText="Tipo" SortExpression="UTP_TYPE" />
        <asp:BoundField DataField="UTP_ABBREVIATION" HeaderText="Abreviação" SortExpression="UTP_ABBREVIATION" />
        <asp:CheckBoxField DataField="UTP_FRACTIONED" HeaderText="Fracionado" SortExpression="UTP_FRACTIONED" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceUnityType" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringInventoryControl %>" DeleteCommand="DELETE FROM [UNITY_TYPE] WHERE [UTP_UNITY_TYPE_ID] = @original_UTP_UNITY_TYPE_ID AND [UTP_TYPE] = @original_UTP_TYPE AND [UTP_ABBREVIATION] = @original_UTP_ABBREVIATION AND [UTP_FRACTIONED] = @original_UTP_FRACTIONED" InsertCommand="INSERT INTO [UNITY_TYPE] ([UTP_TYPE], [UTP_ABBREVIATION], [UTP_FRACTIONED]) VALUES (@UTP_TYPE, @UTP_ABBREVIATION, @UTP_FRACTIONED)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UNITY_TYPE]" UpdateCommand="UPDATE [UNITY_TYPE] SET [UTP_TYPE] = @UTP_TYPE, [UTP_ABBREVIATION] = @UTP_ABBREVIATION, [UTP_FRACTIONED] = @UTP_FRACTIONED WHERE [UTP_UNITY_TYPE_ID] = @original_UTP_UNITY_TYPE_ID AND [UTP_TYPE] = @original_UTP_TYPE AND [UTP_ABBREVIATION] = @original_UTP_ABBREVIATION AND [UTP_FRACTIONED] = @original_UTP_FRACTIONED">
    <DeleteParameters>
        <asp:Parameter Name="original_UTP_UNITY_TYPE_ID" Type="Int32" />
        <asp:Parameter Name="original_UTP_TYPE" Type="String" />
        <asp:Parameter Name="original_UTP_ABBREVIATION" Type="String" />
        <asp:Parameter Name="original_UTP_FRACTIONED" Type="Boolean" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UTP_TYPE" Type="String" />
        <asp:Parameter Name="UTP_ABBREVIATION" Type="String" />
        <asp:Parameter Name="UTP_FRACTIONED" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UTP_TYPE" Type="String" />
        <asp:Parameter Name="UTP_ABBREVIATION" Type="String" />
        <asp:Parameter Name="UTP_FRACTIONED" Type="Boolean" />
        <asp:Parameter Name="original_UTP_UNITY_TYPE_ID" Type="Int32" />
        <asp:Parameter Name="original_UTP_TYPE" Type="String" />
        <asp:Parameter Name="original_UTP_ABBREVIATION" Type="String" />
        <asp:Parameter Name="original_UTP_FRACTIONED" Type="Boolean" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
