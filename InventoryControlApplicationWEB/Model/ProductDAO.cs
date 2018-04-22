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

        public void CreateDAO()
        {
            try
            {
                #region string Insert Command
                string insertCommand = @"INSERT INTO PRODUCT (PRO_MAIN_DESCRIPTION,
                                                               PRO_CATEGORY_DESCRIPTION,
                                                               PRO_SUPPLIER,
                                                               PRO_INTERNAL_CODE,
                                                               PRO_EAN_CODE,
                                                               PRO_PRODUCT_TYPE,
                                                               PRO_COST,
                                                               PRO_PRICE,
                                                               PRO_ACTIVE,
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
                                                    @StockLocation,
                                                    @Observation);

                                            INSERT INTO UNITY (UNI_INPUT,
                                                               UNI_OUTPUT,
                                                               UNI_AMOUNT_OUTPUT) 
                                            VALUES (@UnityInput,
                                                    @UnityOutput,
                                                    @UnityAmountOutput);

                                            INSERT INTO INVENTORY (INV_IMMOBILIZED,
                                                                   INV_CONSUMPTION,
                                                                   INV_RESALE,
                                                                   INV_MINIMUM_RESALE,
                                                                   INV_MAXIMUM_RESALE) 
                                            VALUES (@InventoryImmobilized,
                                                    @InventoryConsumption,
                                                    @InventoryResale,
                                                    @InventoryMinimumResale,
                                                    @InventoryMaximumResale);

                                            INSERT INTO DETAIL (DET_WEIGHT,
                                                                DET_WIDTH,
                                                                DET_HEIGHT,
                                                                DET_LENGTH,
                                                                DET_WARRANTY,
                                                                DET_SOLD_SEPARATELY,
                                                                DET_MARKETABLE_POS) 
                                            VALUES (@DetailWeight,
                                                    @DetailWidth,
                                                    @DetailHeight,
                                                    @DetailLength,
                                                    @DetailWarranty,
                                                    @DetailSoldSeparately,
                                                    @DetailMarketablePOS);

                                            INSERT INTO CONTROLS (CON_DATE_CREATION)
                                            VALUES (@ControlDateCreation);

                                            INSERT INTO ATTRIBUTE (ATT_DESCRIPTION,
                                                                   ATT_CONTENT) 
                                            VALUES (@AttributeDescription,
                                                    @AttributeContent);";
                #endregion

                connection.Open();

                #region Command Add
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
                command.Parameters.AddWithValue("@AttributeDescription", product.Attribute.Description);
                command.Parameters.AddWithValue("@AttributeContent", product.Attribute.Content);
                command.Parameters.AddWithValue("@StockLocation", product.StockLocation);
                command.Parameters.AddWithValue("@Observation", product.Observation);
                #endregion

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

        public void AlterDAO()
        {
            throw new NotImplementedException();
        }

        public void DeleteDAO()
        {
            throw new NotImplementedException();
        }
    }
}