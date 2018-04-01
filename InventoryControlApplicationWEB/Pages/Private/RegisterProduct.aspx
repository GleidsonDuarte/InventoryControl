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
                </p>
                <p>
                    Categoria: 
                    <asp:TextBox ID="TxtCategoryDescription" runat="server"></asp:TextBox>
                </p>
                <p>
                    Fornecedor: 
                    <asp:TextBox ID="TxtSupplier" runat="server"></asp:TextBox>
                </p>
                <p>
                    Código interno: 
                    <asp:TextBox ID="TxtInternalCode" runat="server"></asp:TextBox>
                </p>
                <p>
                    Código de barras (EAN):
                    <asp:TextBox ID="TxtEANCode" runat="server"></asp:TextBox>
                </p>
                <p>
                    Tipo de produto: 
                    <asp:DropDownList ID="DdlProductType" runat="server">
                    </asp:DropDownList>
                </p>
                <p>
                    Custos:
                    <asp:TextBox ID="TxtCost" runat="server"></asp:TextBox>
                </p>
                <p>
                    Valor de venda: 
                    <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlActive" runat="server" GroupingText="Ativo">
                <p>
                    <asp:RadioButton ID="RbtActiveNo" runat="server" GroupName="Active" Text="Não" />
                    &nbsp;<asp:RadioButton ID="RbtActiveYes" runat="server" Checked="True" GroupName="Active" Text="Sim" />
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlUnity" runat="server" GroupingText="Unidade">
                <asp:Panel ID="PnlInput" runat="server" GroupingText="Entrada">
                    &nbsp; 1
                    <asp:DropDownList ID="DropDownListInput" runat="server">
                    </asp:DropDownList>
                </asp:Panel>

                equivale a<br />

                <asp:Panel ID="PnlOutput" runat="server" GroupingText="Saída">
                    <asp:TextBox ID="TxtQtdOutput" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownListOutput" runat="server">
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="PnlStock" runat="server" GroupingText="Estoques">
                <p>
                    Imobilizado:
                    <asp:TextBox ID="TxtImmobilized" runat="server"></asp:TextBox>
                </p>
                <p>
                    Uso e Consumo:
                    <asp:TextBox ID="TxtConsumption" runat="server"></asp:TextBox>
                </p>
                <p>
                    Revenda:
                    <asp:TextBox ID="TxtResale" runat="server"></asp:TextBox>
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
        </asp:View>

        <asp:View ID="ViewDetails" runat="server">
            <asp:Panel ID="PnlWeightsDimensions" runat="server" GroupingText="Pesos e Dimensões">
                <p>
                    Peso:
                    <asp:TextBox ID="TxtWeight" runat="server"></asp:TextBox>
                </p>
                <p>
                    Largura:
                    <asp:TextBox ID="TxtWidth" runat="server"></asp:TextBox>
                </p>
                <p>
                    Altura:
                    <asp:TextBox ID="TxtHeight" runat="server"></asp:TextBox>
                </p>
                <p>
                    Comprimento:
                    <asp:TextBox ID="TxtLength" runat="server"></asp:TextBox>
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlDetails" runat="server" GroupingText="Detalhes">
                <asp:CheckBoxList ID="CblDetails" runat="server">
                    <asp:ListItem Value="Warranty">Série/Garantia</asp:ListItem>
                    <asp:ListItem Value="SoldSeparately">Vendido Separadamente</asp:ListItem>
                    <asp:ListItem Value="MarketablePOS">Comercializável no PDV</asp:ListItem>
                </asp:CheckBoxList>
            </asp:Panel>
            
            <asp:Panel ID="PnlControl" runat="server" GroupingText="Controle">
                <p>
                    Data de criação:
                    <asp:TextBox ID="TxtDateCreation" runat="server"></asp:TextBox>
                </p>
                <p>
                    Última alteração:
                    <asp:TextBox ID="TxtLastChange" runat="server"></asp:TextBox>
                </p>
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
                </p>
            </asp:Panel>

            <asp:Panel ID="PnlObservations" runat="server" GroupingText="Observações">
                <asp:TextBox ID="TxtObservations" runat="server"></asp:TextBox>
            </asp:Panel>

            <div class="botton">
                <asp:Button ID="BtnBack" runat="server" OnClick="BtnBack_Click" Text="Voltar" />
                <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Salvar" />
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
