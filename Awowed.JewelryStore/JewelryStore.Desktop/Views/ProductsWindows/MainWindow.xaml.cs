using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using JewelryStore.Desktop.Controls;
using JewelryStore.Desktop.Models;
using JewelryStore.Desktop.ViewModels;
using JewelryStore.Desktop.Views.ProductsWindows;
using Microsoft.EntityFrameworkCore;

namespace JewelryStore.Desktop.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private IQueryable<Product> _products;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            ShowItems();
        }

        private void AddWindowBtn_Clicked(object sender, RoutedEventArgs e)
        {
            var addWindow = new AddWindow();
            addWindow.ShowDialog();
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            var settingsWindow = new SettingsWindow();
            settingsWindow.ShowDialog();
        }
        private void ShowItems(Func<Product, bool> predicate = null)
        {
            using var context = new AppDbContext();
            MainStackPanel.Children.Clear();

            context.Database.EnsureCreated();
            context.Products.Load();

            _products = predicate == null 
                ? context.Products 
                : context.Products.Where(predicate).AsQueryable();   

            foreach (var product in _products)
            {
                var jewerlyItemViewModel = new JewerlyItemViewModel(product);
                MainStackPanel.Children.Add(new JewerlyItem(jewerlyItemViewModel));
            }
        }

        private void RefreshButton_OnClick(object sender, RoutedEventArgs e)
        {
            FindTb.Text = string.Empty;
            ShowItems();
        }

        private void FindTb_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            var text = FindTb.Text.ToLower();
            if (text == string.Empty)
            {
                ShowItems();
                return;
            }

            using (var context = new AppDbContext())
            {
                ShowItems(x =>
                    x.ProdItem.Contains(text) || context.Suppliers.First(c => c.Id == x.IdSupp).Suplname.ToLower()
                                                  .Contains(text)
                                              || context.Insertions.First(c => c.Id == x.IdIns).InsertName.ToLower()
                                                  .Contains(text)
                                              || context.Insertions.First(c => c.Id == x.IdIns).InsertColor.ToLower()
                                                  .Contains(text)
                                              || context.Insertions.First(c => c.Id == x.IdIns).GemCategory.ToLower()
                                                  .StartsWith(text)
                                              || context.Metals.First(c => c.Id == x.IdMet).MetalName.ToLower()
                                                  .Contains(text)
                                              || context.Metals.First(c => c.Id == x.IdMet).Sample.ToString().ToLower()
                                                  .Contains(text)
                                              || context.Prodgroups.First(c => c.Id == x.IdProdGr).ProdGroupName
                                                  .ToLower().Contains(text)
                                              || "продано".StartsWith(text) && x.IsSold || "не продано".StartsWith(text) && !x.IsSold
                                              || x.BarCode.ToLower().Contains(text)
                                              || x.ArrivalDate.ToString().ToLower().Contains(text));
            }
        }

        private void PrintBtn_OnClick(object sender, RoutedEventArgs e)
        {
            var printWindow = new PrintWindow();
            printWindow.ShowDialog();
        }

        private void SalesBtn_OnClick(object sender, RoutedEventArgs e)
        {
            var salesWindow = new SalesWindow();
            salesWindow.ShowDialog();
        }

        private void ScanButton_OnClick(object sender, RoutedEventArgs e)
        {
            var scanWindow = new ScanWindow();
            scanWindow.ShowDialog();
        }

        private void CheckButton_OnClick(object sender, RoutedEventArgs e)
        {
            var checkWindow = new CheckWindow();
            checkWindow.ShowDialog();
        }
    }
}
