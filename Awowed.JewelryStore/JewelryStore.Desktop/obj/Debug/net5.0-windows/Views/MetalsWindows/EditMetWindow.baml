   M S B A M L   `   `   `  ����  JewelryStore.Desktop.    (JewelryStore.Desktop.Views.EditMetWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � Title$  Зміна Металу��5   	   $	��400��6   $	��300��6+   $	��400��68   $	��300��6G   $
��1000��6W   $	��600��6g   $��Calibri)�6w   $��18(�6�    � WindowStartupLocation$ CenterScreen=�5   '    � 	Resources 5	       �� 
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
 Main�� �� Path$ ActualHeight�	 � RowDefinitions	 5/      �� 50      $��* �6    �� 51      $��* �6    �� 52      $��* �6    �� 53      $��* �6    �� 54      $��50 �6    
 � ColumnDefinitions
 57      �� 58      $
��Auto �6#   �� 59      $��* �6#   .+�5<      �� $��0��6   $��0��6$   #��[  61   $��
Метал��6T   �� 5=      $��0��6   $��1��6$   #��[  61   $��
Проба��6T   �� 5>      $��0��6   $��2��6$   #��[  61   $��Ціна за грам��6T   �� 5?      $��0��6   $��3��6$   #��[  61   $ ��Ціна за роботу��6T   �� 5A      -   5        $��TbMetal��5A   z    �� 	MaxLength$ 20��6F   $��0��6]   $��1��6j   #��[ 6�   �� 5B      -   5        $��TbSample��5B   �   $ 3��6n   $��1��6�   $��1��6�   #��[ 6�   �� 5C      -   5        $��TbPrice��5C   �   $��2��6n   $��1��6{   #��[ 6�   �� 5D      -   5        $��TbWorkPrice��5D   �   $��3��6n   $��1��6{   #��[ 6�   � 5G      $��4��6   $��0��6    $��2��60   
 5H      �� 5I      �� 5J      .+�5N      �� -   5        $��AddBtn��5N   _   $��0��6   #��[ 6)   $��Змінити��6M   5O      �� 5P      -   5        $��ClearBtn��5P   `   $��1��6   #��[ 6)   $��Очистити��6M   5Q      5R      5T      5U      5V      