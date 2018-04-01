namespace InventoryControlApplicationWEB.Model
{
    public class Inventory
    {
        public double Immobilized { get; set; }
        public double Consumption { get; set; }
        public double Resale { get; set; }
        public int MinimumResale { get; set; }
        public int MaximumResale { get; set; }
    }
}