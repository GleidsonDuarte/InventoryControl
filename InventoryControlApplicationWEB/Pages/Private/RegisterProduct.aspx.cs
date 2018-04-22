using System;
using System.Web.UI.WebControls;
using InventoryControlApplicationWEB.Model;

namespace InventoryControlApplicationWEB.Pages.Private
{
    public partial class RegisterProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            MultiViewProductRegistration.ActiveViewIndex++;
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            MultiViewProductRegistration.ActiveViewIndex--;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Product product = new Product();

            #region Informations
            product.MainDescription = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMainDescription")).Text;
            product.Category.Description = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DdlCategoryDescription")).SelectedValue;
            product.Supplier = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtSupplier")).Text;
            product.InternalCode = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtInternalCode")).Text);

            string eanCode = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtEANCode")).Text;
            product.EANCode = Convert.ToInt32(product.ValidateComponent(eanCode));

            product.ProductType = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DdlProductType")).SelectedValue;

            string cost = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtCost")).Text;
            product.Cost = Convert.ToDecimal(product.ValidateComponent(cost));

            product.Price = Convert.ToDecimal(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtPrice")).Text);
            product.Active = RbtActiveYes.Checked ? true : false;
            #endregion

            #region Unity
            product.Unity.Input = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DropDownListInput")).SelectedValue;
            product.Unity.AmountOutput = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtQtdOutput")).Text);
            product.Unity.Output = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DropDownListOutput")).SelectedValue;
            #endregion

            #region Inventory
            string immobilized = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtImmobilized")).Text;
            product.Inventory.Immobilized = Convert.ToDouble(product.ValidateComponent(immobilized));

            string consumption = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtConsumption")).Text;
            product.Inventory.Consumption = Convert.ToDouble(product.ValidateComponent(consumption));

            string resale = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtResale")).Text;
            product.Inventory.Resale = Convert.ToDouble(product.ValidateComponent(resale));

            string minimumResale = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMinimumResale")).Text;
            product.Inventory.MinimumResale = Convert.ToInt32(product.ValidateComponent(minimumResale));

            string maximumResale = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMaximumResale")).Text;
            product.Inventory.MaximumResale = Convert.ToInt32(product.ValidateComponent(maximumResale));
            #endregion
            
            #region Details
            string weight = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtWeight")).Text;
            product.Detail.Weight = Convert.ToDouble(product.ValidateComponent(weight));

            string width = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtWidth")).Text;
            product.Detail.Width = Convert.ToDouble(product.ValidateComponent(width));

            string height = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtHeight")).Text;
            product.Detail.Height = Convert.ToDouble(product.ValidateComponent(height));

            string length = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtLength")).Text;
            product.Detail.Length = Convert.ToDouble(product.ValidateComponent(length));
            
            product.Detail.Warranty = CblDetails.Items[0].Selected ? true : false;
            product.Detail.SoldSeparately = CblDetails.Items[1].Selected ? true : false;
            product.Detail.MarketablePOS = CblDetails.Items[2].Selected ? true : false;
            #endregion

            #region Observations
            product.Attribute.Description = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtDescription")).Text;
            product.Attribute.Content = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtContent")).Text;
            product.StockLocation = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtStockLocation")).Text;
            product.Observation = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtObservations")).Text;
            #endregion

            product.Control.DateCreation = DateTime.Today;

            try
            {
                ProductDAO productDAO = new ProductDAO(product);
                productDAO.CreateDAO();
            }
            catch (Exception)
            {
                throw; // Implementar mensagem de erro!
            }
        }
    }
}