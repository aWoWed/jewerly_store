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
    /// Логика взаимодействия для MetalsMainWindow.xaml
    /// </summary>
    public partial class MetalsMainWindow : Window
    {

        private IQueryable<Metal> _metals;
        public MetalsMainWindow()
        {
            InitializeComponent();
        }

        private void ShowItems(Func<Metal, bool> predicate = null)
        {
            using var context = new AppDbContext();
            MainStackPanel.Children.Clear();

            context.Database.EnsureCreated();
            context.Metals.Load();

            _metals = predicate == null
                ? context.Metals
                : context.Metals.Where(predicate).AsQueryable();

            foreach (var metal in _metals)
            {
                var metalItemViewModel = new MetalItemViewModel(metal);
                MainStackPanel.Children.Add(new MetalItem(metalItemViewModel));
            }
        }

        private void MetalsMainWindow_OnLoaded(object sender, RoutedEventArgs e)
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

            ShowItems(x => x.MetalName.ToLower().Contains(text) || x.Sample.ToString().ToLower().Contains(text));
        }

        private void RefreshButton_OnClick(object sender, RoutedEventArgs e)
        {
            FindTb.Text = string.Empty;
            ShowItems();
        }

        private void AddMetWindowBtn_Clicked(object sender, RoutedEventArgs e)
        {
            var addMetWindow = new AddMetWindow();
            addMetWindow.ShowDialog();
        }
    }
}
