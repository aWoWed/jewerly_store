   M S B A M L   `   `   `  ����O  KJewelryStore.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:JewelryStore.Desktop.Views.ProductsWindows*JewelryStore.Desktop.Views.ProductsWindows  5   	   <    6JewelryStore.Desktop.Views.ProductsWindows.CheckWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Jlocal8clr-namespace:JewelryStore.Desktop.Views.ProductsWindows     5   	   -   5          � Title$7  1Перевірка виробу на складі��5   	   $	��838��6,   $	��838��6<   $
��1000��6I   $	��750��6Z   $	��750��6i   $	��750��6u   $��Calibri)�6�   $��14(�6�    � WindowStartupLocation$ CenterScreen=�5	   '    � 	Resources 5
       �� 
TargetType   	BaseLabel �� Property �� Value  
BaseButton  BaseTextBox��%�  &	        &	 J     &	     �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 25(�6)   �� 5       � ��$	 2 1q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Regular"�6+   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 25(�6)   �� 5       � ��$ 10q�6'   5      5      .��5      � $��10q�6    +� FocusedElement 6   ��  �� ElementName$ TextBox�� � ColumnDefinitions 5    
   �� 5!      �� 5"      	 � RowDefinitions	 5$   
   �� 5%      $
��Auto �6   �� 5&      $��* �6   �� 5'      $
��Auto �6   .+�5)   
   �� -   5        
 ��Name$
 TextBox��5)   }   $��0��6   $��0��6p   $	��300��6�    �� 	MaxLength$ 8��6�   $
��Left=�6�   #��[ 6�   �� 5*   
   -   5        $��1��5*      $#��Показати вироби��6!   $��10q�6V   #��[ 6b   � 5,   
   -   5         �Name$ 	PrintGrid��5,      $��1��6#   $��2��60   	 5-      �� 5.      $
��Auto �6    �� 5/      $��* �6    �� 50      $
��Auto �6     54      �� 55      $	��200 �6#   �� 56      $	��180 �6#   �� 57      $	��160 �6#   �� 58      $��* �6#   .+�5;      &   System.Windows.Controls.DataGrid  -   5          Name$ DataGrid��5>      $��4��5;      $��0��5<      $��1��5=         AutoGenerateColumns$ False��5?      $	��750��5@      $	��750��6&      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5A         
IsReadOnly$
 True��5B      $   HorizontalScrollBarVisibility$ Hidden=�5C         Columns 5E      0  *System.Windows.Controls.DataGridTextColumn  5F      ,  &System.Windows.Controls.DataGridColumn   MinWidth$ 40Q�6)      MaxWidth$ 40Q�67      Header$	 №��6E   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6P   �� *ShowId+  5G      $ 90Q�6)   $ 90Q�67   $ Артикул��6E    6V   �� *
ProdItem+  5H      -   5        BarcodeColumn��$ 90Q�5H   @   $ 90Q�6N   $ Штрих-код��6\    6o   �� *	BarCode+  5I      -   5        
DateColumn��$ 90Q�5I   =   $ 90Q�6K   $ Дата пр.��6Y    6k   �� *ArrivalDateString+  5J      $	 100Q�6)   $	 100Q�68   $ 
Назва��6G    6V   �� *ProdGroupString+  5K      $ 60Q�6)   $ 60Q�67   $ Ч. вага��6E    6V   �� *ClearWeight+  5L      $ 60Q�6)   $ 60Q�67   $ Вага��6E    6S   �� *Weight+  5M      $ 70Q�6)   $ 70Q�67   $ Ціна роб.��6E    6X   �� *PriceForTheWork+  5N      $ 70Q�6)   $ 70Q�67   $ Ціна��6E    6S   �� *Price+  5O      -   5        ExistsColumn��   FontSize$ 20Q�5O   ?      
FontWeight$
 Bold"�6M   $ 30Q�6_   $ 30Q�6m   $ Є��6{    6�   �� *Exists+5Q      �� 5S      $��4��6   $��0��6-   $��2��6=    �� Orientation$ 
Horizontal=�6J   .+�5T      �� $��	20,0,20,0q�6   $
��Bold"�6/   Всього:6J   �� 5U      $��0,0,5,0q�6   Чистої ваги:6;   �� 5V      -	   5         ��Name$ ClearWeightTb��5V      $��0,0,10,0q�63   ХХ6I   �� 5W      $��0,0,5,0q�6   	Ваги:64   �� 5X      -
   5        $ WeightTb��5X      $��0,0,10,0q�6.   ХХ6D   �� 5Y      $��0,0,5,0q�6   Ціни за роботу:6>   �� 5Z      -   5        $ WorkPriceTb��5Z      $��0,0,10,0q�61   ХХ6G   �� 5[      $��0,0,5,0q�6   Ціна за продаж:6>   �� 5\      -   5        $ PriceTb��5\      ХХ61   5]      5^      �� 5`   
   -   5        $��2��5`      $��2��6%   $��Друк��62   $��10q�6\   #��[ 6h   5a      5b      