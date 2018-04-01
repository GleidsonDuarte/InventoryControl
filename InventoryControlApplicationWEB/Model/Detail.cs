using System;

namespace InventoryControlApplicationWEB.Model
{
    public class Detail
    {
        public Double Weight { get; set; }
        public Double Width { get; set; }
        public Double Height { get; set; }
        public Double Length { get; set; }
        public bool Warranty { get; set; }
        public bool SoldSeparately { get; set; }
        public bool MarketablePOS { get; set; }
    }
}