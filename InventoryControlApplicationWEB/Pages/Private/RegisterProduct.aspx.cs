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

            product.MainDescription = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMainDescription")).Text;
            product.Category.Description = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtCategoryDescription")).Text;
            product.Supplier = ((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtSupplier")).Text;
            product.InternalCode = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtInternalCode")).Text);
            product.EANCode = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtEANCode")).Text);
            product.ProductType = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DdlProductType")).SelectedValue;
            product.Cost = Convert.ToDecimal(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtCost")).Text);
            product.Price = Convert.ToDecimal(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtPrice")).Text);

            product.Active = RbtActiveYes.Checked ? true : false;

            product.Unity.Input = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DropDownListInput")).SelectedValue;
            product.Unity.AmountOutput = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtQtdOutput")).Text);
            product.Unity.Output = ((DropDownList)MultiViewProductRegistration.Views[0].FindControl("DropDownListOutput")).SelectedValue;

            product.Inventory.Immobilized = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtImmobilized")).Text);
            product.Inventory.Consumption = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtConsumption")).Text);
            product.Inventory.Resale = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtResale")).Text);
            product.Inventory.MinimumResale = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMinimumResale")).Text);
            product.Inventory.MaximumResale = Convert.ToInt32(((TextBox)MultiViewProductRegistration.Views[0].FindControl("TxtMaximumResale")).Text);

            product.Detail.Weight = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtWeight")).Text);
            product.Detail.Width = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtWidth")).Text);
            product.Detail.Height = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtHeight")).Text);
            product.Detail.Length = Convert.ToDouble(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtLength")).Text);

            product.Detail.Warranty = CblDetails.Items[0].Selected ? true : false;
            product.Detail.SoldSeparately = CblDetails.Items[1].Selected ? true : false;
            product.Detail.MarketablePOS = CblDetails.Items[2].Selected ? true : false;

            product.Control.DateCreation = Convert.ToDateTime(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtDateCreation")).Text);
            product.Control.LastChange = Convert.ToDateTime(((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtLastChange")).Text);

            product.Attribute.Description = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtDescription")).Text;
            product.Attribute.Content = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtContent")).Text;
            product.StockLocation = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtStockLocation")).Text;

            product.Observation = ((TextBox)MultiViewProductRegistration.Views[1].FindControl("TxtObservations")).Text;

            ProductDAO productDAO = new ProductDAO(product);
            try
            {
                productDAO.CreateDAO();
            }
            catch (Exception)
            {
                throw; // Implementar mensagem de erro!
            }
        }
    }
}