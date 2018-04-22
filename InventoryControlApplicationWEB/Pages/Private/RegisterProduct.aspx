<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegisterProduct.aspx.cs" Inherits="InventoryControlApplicationWEB.Pages.Private.RegisterProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:MultiView ID="MultiViewProductRegistration" runat="server" ActiveViewIndex="0">
        <asp:View ID="ViewProduct" runat="server">
            <asp:Panel ID="PanelInformation" runat="server" GroupingText="Informações">
                <p>
                    Descrição principal: 
                        <asp:TextBox ID="TxtMainDescription" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMainDescription" ErrorMessage="Digite uma descrição!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVMainDescription" runat="server" ControlToValidate="TxtMainDescription" ErrorMessage="O campo DESCRIÇÃO PRINCIPAL deve conter até 100 caracteres!" ForeColor="Purple" ValidationExpression="\w{100}">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Categoria: 
                    <asp:DropDownList ID="DdlCategoryDescription" runat="server" DataSourceID="SqlDataSourceCategoryDescription" DataTextField="CAT_DESCRIPTION" DataValueField="CAT_DESCRIPTION">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCategoryDescription" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInventoryControl %>" SelectCommand="SELECT [CAT_DESCRIPTION] FROM [CATEGORY]"></asp:SqlDataSource>
                </p>
                <p>
                    Fornecedor: 
                    <asp:TextBox ID="TxtSupplier" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVSupplier" runat="server" ControlToValidate="TxtSupplier" ErrorMessage="Insira um fornecedor!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVSupplier" runat="server" ControlToValidate="TxtSupplier" ErrorMessage="O campo FORNECEDOR deve conter até 50 caracteres!" ForeColor="Purple" ValidationExpression="\w{50}">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Código interno: 
                    <asp:TextBox ID="TxtInternalCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVInternalCode" runat="server" ControlToValidate="TxtInternalCode" ErrorMessage="Digite um valor válido para o código interno do produto!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    Código de barras (EAN):
                    <asp:TextBox ID="TxtEANCode" runat="server"></asp:TextBox>
                </p>
                <p>
                    Tipo de produto: 
                    <asp:DropDownList ID="DdlProductType" runat="server" DataSourceID="SqlDataSourceProductType" DataTextField="PTP_TYPE" DataValueField="PTP_TYPE">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceProductType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInventoryControl %>" SelectCommand="SELECT [PTP_TYPE] FROM [PRODUCT_TYPE]"></asp:SqlDataSource>
                </p>
                <p>
                    Custos:
                    <asp:TextBox ID="TxtCost" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVCost" runat="server" ControlToValidate="TxtCost" ErrorMessage="O campo CUSTOS deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Valor de venda: 
                    <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVPrice" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Digite um valor para a venda do produto!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVPrice" runat="server" ControlToValidate="TxtPrice" ErrorMessage="O campo VALOR DE VENDA deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlActive" runat="server" GroupingText="Ativo">
                <p>
                    <asp:RadioButton ID="RbtActiveYes" runat="server" Checked="True" GroupName="Active" Text="Sim" />
                    &nbsp;<asp:RadioButton ID="RbtActiveNo" runat="server" GroupName="Active" Text="Não" />
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlUnity" runat="server" GroupingText="Unidade">
                <asp:Panel ID="PnlInput" runat="server" GroupingText="Entrada">
                    &nbsp; 1
                    <asp:DropDownList ID="DropDownListInput" runat="server" DataSourceID="SqlDataSourceUnityType" DataTextField="UTP_TYPE" DataValueField="UTP_TYPE">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceUnityType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInventoryControl %>" SelectCommand="SELECT [UTP_TYPE] FROM [UNITY_TYPE]"></asp:SqlDataSource>
                </asp:Panel>

                equivale a<br />

                <asp:Panel ID="PnlOutput" runat="server" GroupingText="Saída">
                    <asp:TextBox ID="TxtQtdOutput" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVQtdOutput" runat="server" ControlToValidate="TxtQtdOutput" ErrorMessage="Digite um número para saída!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownListOutput" runat="server" DataSourceID="SqlDataSourceUnityType" DataTextField="UTP_TYPE" DataValueField="UTP_TYPE">
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="PnlStock" runat="server" GroupingText="Estoques">
                <p>
                    Imobilizado:
                    <asp:TextBox ID="TxtImmobilized" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVImmobilized" runat="server" ControlToValidate="TxtImmobilized" ErrorMessage="O campo IMOBILIZADO deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Uso e Consumo:
                    <asp:TextBox ID="TxtConsumption" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVConsumption" runat="server" ControlToValidate="TxtConsumption" ErrorMessage="O campo CONSUMO deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Revenda:
                    <asp:TextBox ID="TxtResale" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVResale" runat="server" ControlToValidate="TxtResale" ErrorMessage="O campo REVENDA deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Mínimo p/ Revenda:
                    <asp:TextBox ID="TxtMinimumResale" runat="server"></asp:TextBox>
                </p>
                <p>
                    Máximo p/ Revenda: 
                    <asp:TextBox ID="TxtMaximumResale" runat="server"></asp:TextBox>
                </p>
            </asp:Panel>

            <div class="botton">
                <asp:Button ID="BtnNext" runat="server" OnClick="BtnNext_Click" Text="Avançar" />
            </div>
            <asp:ValidationSummary ID="VSUVieProduct" runat="server" />
        </asp:View>

        <asp:View ID="ViewDetails" runat="server">
            <asp:Panel ID="PnlWeightsDimensions" runat="server" GroupingText="Pesos e Dimensões">
                <p>
                    Peso:
                    <asp:TextBox ID="TxtWeight" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVWeight" runat="server" ControlToValidate="TxtWeight" ErrorMessage="O campo PESO deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Largura:
                    <asp:TextBox ID="TxtWidth" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVWidth" runat="server" ControlToValidate="TxtWidth" ErrorMessage="O campo LARGURA deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Altura:
                    <asp:TextBox ID="TxtHeight" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVHeight" runat="server" ControlToValidate="TxtHeight" ErrorMessage="O campo ALTURA deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    Comprimento:
                    <asp:TextBox ID="TxtLength" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVLength" runat="server" ControlToValidate="TxtLength" ErrorMessage="O campo COMPRIMENTO deve ter no máximo 8 digitos antes da vígula e 2 depois dela!" ForeColor="Purple" ValidationExpression="\d{8}(,\d{2})?">*</asp:RegularExpressionValidator>
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlDetails" runat="server" GroupingText="Detalhes">
                <asp:CheckBoxList ID="CblDetails" runat="server">
                    <asp:ListItem Value="Warranty">Série/Garantia</asp:ListItem>
                    <asp:ListItem Value="SoldSeparately">Vendido Separadamente</asp:ListItem>
                    <asp:ListItem Value="MarketablePOS">Comercializável no PDV</asp:ListItem>
                </asp:CheckBoxList>
            </asp:Panel>
            
            <asp:Panel ID="PnlAttributes" runat="server" GroupingText="Atributos">
                <p>
                    Descrição: 
                    <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
                </p>
                <p>
                    Conteúdo: 
                    <asp:TextBox ID="TxtContent" runat="server"></asp:TextBox>
                </p>
                <p>
                    Localização no estoque: 
                    <asp:TextBox ID="TxtStockLocation" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVStockLocation" runat="server" ControlToValidate="TxtStockLocation" ErrorMessage="O campo LOCALIZAÇÃO NO ESTOQUE deve conter até 100 caracteres!" ForeColor="Purple" ValidationExpression="\w{100}">*</asp:RegularExpressionValidator>
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlObservations" runat="server" GroupingText="Observações">
                <asp:TextBox ID="TxtObservations" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REVObservations" runat="server" ControlToValidate="TxtObservations" ErrorMessage="O campo OBSERVAÇÕES deve conter até 250 caracteres!" ForeColor="Purple" ValidationExpression="\w{250}">*</asp:RegularExpressionValidator>
            </asp:Panel>

            <div class="botton">
                <asp:Button ID="BtnBack" runat="server" OnClick="BtnBack_Click" Text="Voltar" />
                <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Salvar" />
                <asp:ValidationSummary ID="VSUViewDetails" runat="server" />
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
