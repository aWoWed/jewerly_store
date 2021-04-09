﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using JewelryStore.Desktop.Models;
using JewelryStore.Desktop.ViewModels;
using Microsoft.EntityFrameworkCore;
using NewsStyleUriParser = System.NewsStyleUriParser;

namespace JewelryStore.Desktop.Views
{
    /// <summary>
    /// Interaction logic for PrintWindow.xaml
    /// </summary>
    public partial class PrintWindow : Window
    {
        private readonly AppDbContext _context = new AppDbContext();

        private JewerlyItemViewModel _vm;
        private IQueryable<Prodgroup> _prodgroups;
        private IQueryable<Supplier> _suppliers;


        public PrintWindow()
        {
            InitializeComponent();
        }

        private void CountOverall()
        {
            var temp = DataGrid.Items;
            float overallPrice = 0, overallWorkPrice = 0, overallWeight = 0, overallClearWeight = 0;
            foreach (var item in temp)
            {
                var tempItem = item as JewerlyItemViewModel;
                overallClearWeight += tempItem.ClearWeight;
                overallWeight += tempItem.Weight;
                overallPrice += tempItem.Price;
                overallWorkPrice += tempItem.PriceForTheWork;
            }

            PriceTb.Text = $"{overallPrice} UAH";
            WorkPriceTb.Text = $"{overallWorkPrice} UAH";
            ClearWeightTb.Text = $"{overallClearWeight} г";
            WeightTb.Text = $"{overallWeight} г";
        }

        private void PrintWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            _context.Database.EnsureCreated();
            _context.Products.Load();
            _context.Metals.Load();
            _context.Prodgroups.Load();
            _context.Suppliers.Load();
            _context.Insertions.Load();

            _prodgroups = _context.Prodgroups;
            _suppliers = _context.Suppliers;

            foreach (var supplier in _suppliers)
            {
                CbSupplier.Items.Add(supplier.Suplname);
            }

            ShowItems();
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            var printDialog = new PrintDialog();
            if (printDialog.ShowDialog() == true)
            {
                printDialog.PrintVisual(PrintGrid, "Grid");
            }
        }

        private void IntPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !(char.IsDigit(e.Text, 0));
        }

        private void ShowItems(Func<Product, bool> predicate = null)
        {
            using (var context = new AppDbContext())
            {
                var tempList = predicate == null
                    ? context.Products.ToList().Select(x => new JewerlyItemViewModel(x))
                    : context.Products.Where(predicate).ToList().Select(x => new JewerlyItemViewModel(x));
                
                DataGrid.ItemsSource = tempList;
            }
            CountOverall();
        }

        //TODO: При выборе поставщика в комбо Боксе нельзя выбрать - показать все товары.
        //TODO: Выбор Даты между двумя Пикерами

        private void CbSupplier_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (var context = new AppDbContext())
            {
                var supplier = context.Suppliers.FirstOrDefault(x => x.Suplname == CbSupplier.SelectedItem.ToString());
                if (supplier == null)
                {
                    DataGrid.ItemsSource = null;
                }
                else
                {
                    ShowItems(x => x.IdSupp == context.Suppliers.First(c => c.Suplname == supplier.Suplname).Id);
                }
            }
        }

        private void DtFind_OnSelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            using (var context = new AppDbContext())
            {
                var date = context.Products.FirstOrDefault(x => x.ArrivalDate == dtFind.SelectedDate);
                if (date == null)
                {
                    ShowItems();
                }
                else
                {
                    ShowItems(x => x.ArrivalDate >= context.Products.First(x => x.ArrivalDate == date.ArrivalDate).ArrivalDate);
                }
            }
        }

        private void DtFind2_OnSelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            using (var context = new AppDbContext())
            {
                var date = context.Products.FirstOrDefault(x => x.ArrivalDate == dtFind.SelectedDate);
                if (date == null)
                {
                    ShowItems();
                }
                else
                {
                    ShowItems(x => x.ArrivalDate <= context.Products.First(x => x.ArrivalDate == date.ArrivalDate).ArrivalDate);
                }
            }

        }
    }
}
