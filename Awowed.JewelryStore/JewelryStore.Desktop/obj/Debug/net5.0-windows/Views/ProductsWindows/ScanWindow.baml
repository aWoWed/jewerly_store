   M S B A M L   `   `   `  ����O  KJewelryStore.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:JewelryStore.Desktop.Views.ProductsWindows*JewelryStore.Desktop.Views.ProductsWindows  5   	   ;    5JewelryStore.Desktop.Views.ProductsWindows.ScanWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Jlocal8clr-namespace:JewelryStore.Desktop.Views.ProductsWindows     5   	     � Title$  Сканування��5   	   $	��600��6   $	��800��6)   $	��640��65   $	��600��6D   $��Calibri)�6T   $��14(�6i    � WindowStartupLocation$ CenterScreen=�5	   	    � 	Resources 5       �� 
TargetType   	BaseLabel �� Property �� Value  
BaseButton  BaseTextBox��%�  &	        &	 J     &	     �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 25(�6)   �� 5       � ��$	 2 1q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Regular"�6+   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 25(�6)   �� 5       � ��$ 10q�6'   5      5      .��5       � $��10q�6    +� FocusedElement 6   ��  �� ElementName$ TextBox�� � RowDefinitions 5!   
   �� 5"      $
��Auto �6   �� 5#      $��* �6   �� 5$      $
��Auto �6   .+�5&   
   �� -   5        	 ��Name$	 TextBox��5&   l   $��0��6_   $	��300��6}   
 �� 	MaxLength$
 8��6�   $
��Left=�6�   #��[ 6�   �� 5'   
   -   5         ��Name$ ListBox��5'   ;   $��1��6.   $��10q�6L   �� 5(   
   -   5        $��2��5(      $��OK��6   $��10q�6F   #��[ 6R   5)      5*      5+      