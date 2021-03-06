using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace TestWebApi.sakila
{
    public partial class jewerly_storeContext : DbContext
    {
        public jewerly_storeContext()
        {
        }

        public jewerly_storeContext(DbContextOptions<jewerly_storeContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Insertion> Insertions { get; set; }
        public virtual DbSet<Metal> Metals { get; set; }
        public virtual DbSet<Prodgroup> Prodgroups { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Salesorder> Salesorders { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseMySQL("server=127.0.0.1;uid=root;pwd=root;database=jewerly_store");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>(entity =>
            {
                entity.HasKey(e => new { e.Rntrc, e.PassId })
                    .HasName("PRIMARY");

                entity.ToTable("employees");

                entity.HasIndex(e => e.Rntrc, "RNTRC")
                    .IsUnique();

                entity.HasIndex(e => e.PassId, "pass_ID")
                    .IsUnique();

                entity.Property(e => e.Rntrc)
                    .HasMaxLength(10)
                    .HasColumnName("RNTRC")
                    .IsFixedLength(true);

                entity.Property(e => e.PassId)
                    .HasMaxLength(9)
                    .HasColumnName("pass_ID")
                    .IsFixedLength(true);

                entity.Property(e => e.DateOfBirth)
                    .HasColumnType("date")
                    .HasColumnName("date_of_birth");

                entity.Property(e => e.FathersName)
                    .HasMaxLength(50)
                    .HasColumnName("fathers_name")
                    .IsFixedLength(true);

                entity.Property(e => e.FirstName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("first_name")
                    .IsFixedLength(true);

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("last_name")
                    .IsFixedLength(true);

                entity.Property(e => e.PhoneNum)
                    .IsRequired()
                    .HasMaxLength(13)
                    .HasColumnName("phone_num")
                    .IsFixedLength(true);

                entity.Property(e => e.Salary).HasColumnName("salary");
            });

            modelBuilder.Entity<Insertion>(entity =>
            {
                entity.ToTable("insertions");

                entity.Property(e => e.Id)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("id");

                entity.Property(e => e.GemCategory)
                    .HasMaxLength(20)
                    .HasColumnName("gem_category")
                    .IsFixedLength(true);

                entity.Property(e => e.InsertColor)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("insert_color")
                    .IsFixedLength(true);

                entity.Property(e => e.InsertName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("insert_name")
                    .IsFixedLength(true);
            });

            modelBuilder.Entity<Metal>(entity =>
            {
                entity.ToTable("metals");

                entity.Property(e => e.Id)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("id");

                entity.Property(e => e.MetalName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("metal_name")
                    .IsFixedLength(true);

                entity.Property(e => e.Sample).HasColumnName("sample");
            });

            modelBuilder.Entity<Prodgroup>(entity =>
            {
                entity.ToTable("prodgroups");

                entity.Property(e => e.Id)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("id");

                entity.Property(e => e.ProdGroupName)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("prod_group_name")
                    .IsFixedLength(true);
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("products");

                entity.HasIndex(e => e.IdIns, "fk_insert");

                entity.HasIndex(e => e.IdMet, "fk_met");

                entity.HasIndex(e => e.IdProdGr, "fk_prod_group");

                entity.HasIndex(e => e.IdSupp, "fk_supp");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.ArrivalDate)
                    .HasColumnType("date")
                    .HasColumnName("arrival_date");

                entity.Property(e => e.ClearWeight).HasColumnName("clear_weight");

                entity.Property(e => e.Faceting)
                    .HasMaxLength(20)
                    .HasColumnName("faceting")
                    .IsFixedLength(true);

                entity.Property(e => e.IdIns).HasColumnName("id_ins");

                entity.Property(e => e.IdMet).HasColumnName("id_met");

                entity.Property(e => e.IdProdGr).HasColumnName("id_prod_gr");

                entity.Property(e => e.IdSupp).HasColumnName("id_supp");

                entity.Property(e => e.PriceForTheWork).HasColumnName("price_for_the_work");

                entity.Property(e => e.ProdItem)
                    .IsRequired()
                    .HasMaxLength(9)
                    .HasColumnName("prod_item")
                    .IsFixedLength(true);

                entity.Property(e => e.ProdLength).HasColumnName("prod_length");

                entity.Property(e => e.ProdSize).HasColumnName("prod_size");

                entity.Property(e => e.ProdType)
                    .HasMaxLength(20)
                    .HasColumnName("prod_type")
                    .IsFixedLength(true);

                entity.Property(e => e.WeaveType)
                    .HasMaxLength(20)
                    .HasColumnName("weave_type")
                    .IsFixedLength(true);

                entity.Property(e => e.WeaveWay)
                    .HasMaxLength(20)
                    .HasColumnName("weave_way")
                    .IsFixedLength(true);

                entity.Property(e => e.Weight).HasColumnName("weight");

                entity.HasOne(d => d.IdInsNavigation)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.IdIns)
                    .HasConstraintName("fk_insert");

                entity.HasOne(d => d.IdMetNavigation)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.IdMet)
                    .HasConstraintName("fk_met");

                entity.HasOne(d => d.IdProdGrNavigation)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.IdProdGr)
                    .HasConstraintName("fk_prod_group");

                entity.HasOne(d => d.IdSuppNavigation)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.IdSupp)
                    .HasConstraintName("fk_supp");
            });

            modelBuilder.Entity<Salesorder>(entity =>
            {
                entity.ToTable("salesorders");

                entity.HasIndex(e => e.IdProd, "fk_id_prod");

                entity.HasIndex(e => e.IdUser, "fk_id_user");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.IdProd).HasColumnName("id_prod");

                entity.Property(e => e.IdUser).HasColumnName("id_user");

                entity.Property(e => e.OrderDate)
                    .HasColumnType("date")
                    .HasColumnName("order_date");

                entity.Property(e => e.ProdQuantity).HasColumnName("prod_quantity");

                entity.Property(e => e.SaleDate)
                    .HasColumnType("date")
                    .HasColumnName("sale_date");

                entity.Property(e => e.SalePrice).HasColumnName("sale_price");

                entity.HasOne(d => d.IdProdNavigation)
                    .WithMany(p => p.Salesorders)
                    .HasForeignKey(d => d.IdProd)
                    .HasConstraintName("fk_id_prod");

                entity.HasOne(d => d.IdUserNavigation)
                    .WithMany(p => p.Salesorders)
                    .HasForeignKey(d => d.IdUser)
                    .HasConstraintName("fk_id_user");
            });

            modelBuilder.Entity<Supplier>(entity =>
            {
                entity.ToTable("suppliers");

                entity.HasIndex(e => e.Suplname, "suplname")
                    .IsUnique();

                entity.Property(e => e.Id)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("id");

                entity.Property(e => e.Suplname)
                    .IsRequired()
                    .HasMaxLength(40)
                    .HasColumnName("suplname")
                    .IsFixedLength(true);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("users");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.AdminRights).HasColumnName("admin_rights");

                entity.Property(e => e.FathersName)
                    .HasMaxLength(50)
                    .HasColumnName("fathers_name")
                    .IsFixedLength(true);

                entity.Property(e => e.FirstName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("first_name")
                    .IsFixedLength(true);

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("last_name")
                    .IsFixedLength(true);

                entity.Property(e => e.Mail)
                    .IsRequired()
                    .HasMaxLength(80)
                    .HasColumnName("mail")
                    .IsFixedLength(true);

                entity.Property(e => e.PhoneNum)
                    .IsRequired()
                    .HasMaxLength(13)
                    .HasColumnName("phone_num")
                    .IsFixedLength(true);

                entity.Property(e => e.UserPassword)
                    .IsRequired()
                    .HasMaxLength(90)
                    .HasColumnName("user_password")
                    .IsFixedLength(true);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
