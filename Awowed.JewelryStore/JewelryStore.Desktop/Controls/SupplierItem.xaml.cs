using System.Linq;
using System.Windows;
using System.Windows.Controls;
using JewelryStore.Desktop.Models;
using JewelryStore.Desktop.ViewModels;
using JewelryStore.Desktop.Views;

namespace JewelryStore.Desktop.Controls
{
    /// <summary>
    /// Логика взаимодействия для SupplierItem.xaml
    /// </summary>
    public partial class SupplierItem : UserControl
    {
        #region Dependency Properties

        public static readonly DependencyProperty TextBlockContentProperty = DependencyProperty.Register(
            "TextBlockContent", typeof(string), typeof(SupplierItem), new PropertyMetadata(default(string)));

        public string TextBlockContent
        {
            get => (string)GetValue(TextBlockContentProperty);
            set => SetValue(TextBlockContentProperty, value);
        }

        #endregion

        #region Private Fields

        private readonly SupplierItemViewModel _vm;

        #endregion

        #region Constructor

        public SupplierItem(SupplierItemViewModel vm)
        {
            InitializeComponent();

            _vm = vm;
            using var context = new AppDbContext();
            TextBlockContent = _vm.Suplname;
        }

        #endregion

        #region Private Methods

        private void ChangeButton_OnClick(object sender, RoutedEventArgs e)
        {
            var editSuppWindow = new EditSuppWindow(_vm);
            editSuppWindow.ShowDialog();
        }

        private void DeleteButton_OnClick(object sender, RoutedEventArgs e)
        {
            using var context = new AppDbContext();
            var supplier = context.Suppliers.FirstOrDefault(x => x.Id == _vm.Id);
            if (supplier != null)
            {
                var result = MessageBox.Show("Чи впевнені Ви, що бажаєте видалити постачальника?", "Підтвердження", MessageBoxButton.YesNo, MessageBoxImage.Exclamation);
                switch (result)
                {
                    case MessageBoxResult.Yes:
                        context.Suppliers.Remove(supplier);
                        context.SaveChanges();
                        MessageBox.Show("Успішно видалено з бд!", "Успіх", MessageBoxButton.OK,
                            MessageBoxImage.Information);
                        break;
                    case MessageBoxResult.No:
                        break;
                }
            }
            else
            {
                MessageBox.Show("Помилка видалення з бд!", "Помилка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        #endregion

    }
}
