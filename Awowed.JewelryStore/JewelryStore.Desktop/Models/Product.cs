using System;
using System.Collections.Generic;

#nullable disable

namespace JewelryStore.Desktop.Models
{
    public partial class Product
    {
        public Product()
        {
            Productssales = new HashSet<ProductsSale>();
        }

        public int Id { get; set; }
        public byte IdMet { get; set; }
        public byte IdIns { get; set; }
        public byte IdProdGr { get; set; }
        public byte IdSupp { get; set; }
        public DateTime? ArrivalDate { get; set; }
        public string BarCode { get; set; }
        public string ProdItem { get; set; }
        public float Weight { get; set; }
        public float ClearWeight { get; set; }
        public float Carat { get; set; }
        public string ProdType { get; set; }
        public float? ProdSize { get; set; }
        public string WeaveType { get; set; }
        public string WeaveWay { get; set; }
        public string Faceting { get; set; }
        public float PriceForTheWork { get; set; }
        public float Price { get; set; }
        public bool IsSold { get; set; }

        public virtual Insertion IdInsNavigation { get; set; }
        public virtual Metal IdMetNavigation { get; set; }
        public virtual Prodgroup IdProdGrNavigation { get; set; }
        public virtual Supplier IdSuppNavigation { get; set; }
        public virtual ICollection<ProductsSale> Productssales { get; set; }
    }
}
