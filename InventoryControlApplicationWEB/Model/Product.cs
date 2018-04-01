namespace InventoryControlApplicationWEB.Model
{
    public class Product
    {
        public string MainDescription { get; set; }
        public Category Category { get; set; }
        public string Supplier { get; set; }
        public int InternalCode { get; set; }
        public int EANCode { get; set; }
        public string ProductType { get; set; }
        public decimal Cost { get; set; }
        public decimal Price { get; set; }
        public bool Active { get; set; }
        public Unity Unity { get; set; }
        public Inventory Inventory { get; set; }
        public Detail Detail { get; set; }
        public Control Control { get; set; }
        public Attribute Attribute { get; set; }
        public string StockLocation { get; set; }
        public string Observation { get; set; }
    }
}