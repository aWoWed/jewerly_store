   M S B A M L   `   `   `  ����O  KJewelryStore.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:JewelryStore.Desktop.ViewsJewelryStore.Desktop.Views  5   	   .    (JewelryStore.Desktop.Views.AddSuppWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:JewelryStore.Desktop.Views     5   	     � Title$3  -Додавання постачальника��5   	   $	��600��6)   $	��150��65   $	��600��6B   $	��150��6Q   $
��1000��6a   $	��600��6q   $��Calibri)�6�   $��18(�6�    � WindowStartupLocation$ CenterScreen=�5	   	    � 	Resources 5
       �� 
TargetType   	BaseLabel �� Property �� Value  
BaseButton  BaseTextBox  BaseTextBlock(  "System.Windows.Controls.DatePicker  BaseDatePicker  BaseComboBox��%8  &	        &	 J     &	      &	 �    &	 F    &	 �    �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$ 25(�6)   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 1q�6'   5      �� 5   
   " ��6   .�5      ��  �@��TextAlignment$
 Left=�6.   �� 5       � ��$ Center=�69   �� 5       � ��$ 3q�6'   5      �� 5   
   " ��6   .�5      ��  �@��TextAlignment$
 Left=�6.   �� 5       � ��$ Center=�62   �� 5        � ��$ 3q�6'   5!      �� 5#   
   "  6   .�5$      ��  � ��$ Center=�62   �� 5%       � ��$ 3q�6'   5&      �� 5(   
   " ��6   .�5)      ��  � ��$ 3q�6'   5*      5,      .��5.      �� -   5         ��Name$
 Main��5.   !   $��0q�6   ._�5/   
   � $	��Top=�6F   ��6   ��  �� ElementName$
 Main�� �� Path$ ActualHeight�	 � RowDefinitions	 50      �� 51      $��* �6    �� 52      $��50 �6    
 � ColumnDefinitions
 55      �� 56      $
��Auto �6#   �� 57      $��* �6#   .+�5:      �� $��0��6   $��0��6$   #��[  61   $��Постачальник��6T   �� 5<      -   5        $��TbSupp��5<   z    �� 	MaxLength$ 40��6F   $��0��6]   $��1��6j   #��[ 6�   � 5>      $��1��6   $��0��6    $��2��60   
 5?      �� 5@      �� 5A      .+�5E      �� -   5        $��AddBtn��5E   ^   $��0��6   #��[ 6)   $��Додати��6M   5F      �� 5G      -   5        $��ClearBtn��5G   `   $��1��6   #��[ 6)   $��Очистити��6M   5H      5I      5K      5L      5M      