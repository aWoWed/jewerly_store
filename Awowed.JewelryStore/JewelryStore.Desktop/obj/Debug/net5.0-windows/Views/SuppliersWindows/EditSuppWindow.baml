   M S B A M L   `   `   `  ����  JewelryStore.Desktop/    )JewelryStore.Desktop.Views.EditSuppWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � Title$+  %Зміна Постачальника��5   	   $	��600��6%   $	��150��61   $	��600��6>   $	��150��6M   $
��1000��6]   $	��600��6m   $��Calibri)�6}   $��18(�6�    � WindowStartupLocation$ CenterScreen=�5   (    � 	Resources 5	       �� 
TargetType   	BaseLabel �� Property �� Value  
BaseButton  BaseTextBox  BaseTextBlock(  "System.Windows.Controls.DatePicker  BaseDatePicker  BaseComboBox��%8  &	        &	 J     &	      &	 �    &	 F    &	 �    �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$ 25(�6)   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 1q�6'   5      �� 5   
   " ��6   .�5      ��  �@��TextAlignment$
 Left=�6.   �� 5       � ��$ Center=�69   �� 5       � ��$ 3q�6'   5      �� 5   
   " ��6   .�5      ��  �@��TextAlignment$
 Left=�6.   �� 5       � ��$ Center=�62   �� 5       � ��$ 3q�6'   5       �� 5"   
   "  6   .�5#      ��  � ��$ Center=�62   �� 5$       � ��$ 3q�6'   5%      �� 5'   
   " ��6   .�5(      ��  � ��$ 3q�6'   5)      5+      .��5-      �� -   5         ��Name$
 Main��5-   !   $��0q�6   ._�5.   
   � $	��Top=�6F   ��6   ��  �� ElementName$
 Main�� �� Path$ ActualHeight�	 � RowDefinitions	 5/      �� 50      $��* �6    �� 51      $��50 �6    
 � ColumnDefinitions
 54      �� 55      $
��Auto �6#   �� 56      $��* �6#   .+�59      �� $��0��6   $��0��6$   #��[  61   $��Постачальник��6T   �� 5;      -   5        $��TbSupp��5;   z    �� 	MaxLength$ 40��6F   $��0��6]   $��1��6j   #��[ 6�   � 5=      $��1��6   $��0��6    $��2��60   
 5>      �� 5?      �� 5@      .+�5D      �� -   5        $��EditBtn��5D   _   $��0��6   #��[ 6)   $��Змінити��6M   5E      �� 5F      -   5        $��ClearBtn��5F   `   $��1��6   #��[ 6)   $��Очистити��6M   5G      5H      5J      5K      5L      