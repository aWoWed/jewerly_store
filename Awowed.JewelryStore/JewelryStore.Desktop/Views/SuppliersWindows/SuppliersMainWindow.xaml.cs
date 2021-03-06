using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using JewelryStore.Desktop.Controls;
using JewelryStore.Desktop.Models;
using JewelryStore.Desktop.ViewModels;
using Microsoft.EntityFrameworkCore;

namespace JewelryStore.Desktop.Views
{
    /// <summary>
    /// Логика взаимодействия для SuppliersMainWindow.xaml
    /// </summary>
    public partial class SuppliersMainWindow : Window
    {

        private IQueryable<Supplier> _suppliers;
        public SuppliersMainWindow()
        {
            InitializeComponent();
        }
        private void ShowItems(Func<Supplier, bool> predicate = null)
        {
            using var context = new AppDbContext();
            MainStackPanel.Children.Clear();

            context.Database.EnsureCreated();
            context.Suppliers.Load();

            _suppliers = predicate == null
                ? context.Suppliers
                : context.Suppliers.Where(predicate).AsQueryable();

            foreach (var supplier in _suppliers)
            {
                var supplierItemViewModel = new SupplierItemViewModel(supplier);
                MainStackPanel.Children.Add(new SupplierItem(supplierItemViewModel));
            }
        }

        private void SuppliersMainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
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

            ShowItems(x => x.Suplname.ToLower().Contains(text));
        }

        private void RefreshButton_OnClick(object sender, RoutedEventArgs e)
        {
            FindTb.Text = string.Empty;
            ShowItems();
        }

        private void AddSuppWindowBtn_Clicked(object sender, RoutedEventArgs e)
        {
            var addSuppWindow = new AddSuppWindow();
            addSuppWindow.ShowDialog();
        }
    }
}
