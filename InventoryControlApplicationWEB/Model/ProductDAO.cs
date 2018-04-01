using System;
using System.Data.SqlClient;

namespace InventoryControlApplicationWEB.Model
{
    public class ProductDAO : Product, IBasicDAO
    {
        static string STRING_CONNECTION = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringInventoryControl"].ConnectionString;
        SqlConnection connection = new SqlConnection(STRING_CONNECTION);

        Product product = new Product();

        public ProductDAO(Product product)
        {
            this.product = product;
        }

        public bool CreateDAO()
        {
            try
            {
                string insertCommand = @"INSERT INTO PRODUCT (PRO_MAIN_DESCRIPTION,
                                                              PRO_DESCRIPTION,
                                                              PRO_CATEGORY_DESCRIPTION,
                                                              PRO_SUPPLIER,
                                                              PRO_INTERNAL_CODE,
                                                              PRO_EAN_CODE,
                                                              PRO_PRODUCT_TYPE,
                                                              PRO_COST,
                                                              PRO_PRICE,
                                                              PRO_ACTIVE,
                                                              PRO_UNITY_INPUT,
                                                              PRO_UNITY_AMOUNT_OUTPUT,
                                                              PRO_UNITY_OUTPUT,
                                                              PRO_INVENTORY_IMMOBILIZED,
                                                              PRO_INVENTORY_CONSUMPTION,
                                                              PRO_INVENTORY_RESALE,
                                                              PRO_INVENTORY_MINIMUM_RESALE,
                                                              PRO_INVENTORY_MAXIMUM_RESALE,
                                                              PRO_DETAIL_WEIGHT,
                                                              PRO_DETAIL_WIDTH,
                                                              PRO_DETAIL_HEIGHT,
                                                              PRO_DETAIL_LENGTH,
                                                              PRO_DETAIL_WARRANTY,
                                                              PRO_DETAIL_SOLD_SEPARATELY,
                                                              PRO_DETAIL_MARKETABLE_POS,
                                                              PRO_CONTROL_DATE_CREATION,
                                                              PRO_CONTROL_LAST_CHANGE,
                                                              PRO_ATTRIBUTE_DESCRIPTION,
                                                              PRO_ATTRIBUTE_CONTENT,
                                                              PRO_STOCK_LOCATION,
                                                              PRO_OBSERVATION)

                                                      VALUES (@MainDescription,
                                                              @CategoryDescription,
                                                              @Supplier,
                                                              @InternalCode,
                                                              @EANCode,
                                                              @ProductType,
                                                              @Cost,
                                                              @Price,
                                                              @Active,
                                                              @UnityInput,
                                                              @UnityAmountOutput,
                                                              @UnityOutput,
                                                              @InventoryImmobilized,
                                                              @InventoryConsumption,
                                                              @InventoryResale,
                                                              @InventoryMinimumResale,
                                                              @InventoryMaximumResale,
                                                              @DetailWeight,
                                                              @DetailWidth,
                                                              @DetailHeight,
                                                              @DetailLength,
                                                              @DetailWarranty,
                                                              @DetailSoldSeparately,
                                                              @DetailMarketablePOS,
                                                              @ControlDateCreation,
                                                              @ControlLastChange,
                                                              @AttributeDescription,
                                                              @AttributeContent,
                                                              @StockLocation,
                                                              @Observation);";

                connection.Open();
                SqlCommand command = new SqlCommand(insertCommand, connection);
                command.Parameters.AddWithValue("@MainDescription", product.MainDescription);
                command.Parameters.AddWithValue("@CategoryDescription", product.Category.Description);
                command.Parameters.AddWithValue("@Supplier", product.Supplier);
                command.Parameters.AddWithValue("@InternalCode", product.InternalCode);
                command.Parameters.AddWithValue("@EANCode", product.EANCode);
                command.Parameters.AddWithValue("@ProductType", product.ProductType);
                command.Parameters.AddWithValue("@Cost", product.Cost);
                command.Parameters.AddWithValue("@Price", product.Price);
                command.Parameters.AddWithValue("@Active", product.Active);
                command.Parameters.AddWithValue("@UnityInput", product.Unity.Input);
                command.Parameters.AddWithValue("@UnityAmountOutput", product.Unity.AmountOutput);
                command.Parameters.AddWithValue("@UnityOutput", product.Unity.Output);
                command.Parameters.AddWithValue("@InventoryImmobilized", product.Inventory.Immobilized);
                command.Parameters.AddWithValue("@InventoryConsumption", product.Inventory.Consumption);
                command.Parameters.AddWithValue("@InventoryResale", product.Inventory.Resale);
                command.Parameters.AddWithValue("@InventoryMinimumResale", product.Inventory.MinimumResale);
                command.Parameters.AddWithValue("@InventoryMaximumResale", product.Inventory.MaximumResale);
                command.Parameters.AddWithValue("@DetailWeight", product.Detail.Weight);
                command.Parameters.AddWithValue("@DetailWidth", product.Detail.Width);
                command.Parameters.AddWithValue("@DetailHeight", product.Detail.Height);
                command.Parameters.AddWithValue("@DetailLength", product.Detail.Length);
                command.Parameters.AddWithValue("@DetailWarranty", product.Detail.Warranty);
                command.Parameters.AddWithValue("@DetailSoldSeparately", product.Detail.SoldSeparately);
                command.Parameters.AddWithValue("@DetailMarketablePOS", product.Detail.MarketablePOS);
                command.Parameters.AddWithValue("@ControlDateCreation", product.Control.DateCreation);
                command.Parameters.AddWithValue("@ControlLastChange", product.Control.LastChange);
                command.Parameters.AddWithValue("@AttributeDescription", product.Attribute.Description);
                command.Parameters.AddWithValue("@AttributeContent", product.Attribute.Content);
                command.Parameters.AddWithValue("@StockLocation", product.StockLocation);
                command.Parameters.AddWithValue("@Observation", product.Observation);
                command.ExecuteReader();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }

        public bool AlterDAO()
        {
            throw new NotImplementedException();
        }

        public bool DeleteDAO()
        {
            throw new NotImplementedException();
        }
    }
}