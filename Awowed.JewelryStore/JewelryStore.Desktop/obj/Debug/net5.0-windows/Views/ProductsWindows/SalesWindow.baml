   M S B A M L   `   `   `  ����O  KJewelryStore.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:JewelryStore.Desktop.ViewsJewelryStore.Desktop.Views  5   	   d `PresentationFramework.Classic, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35jMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.ClassicMicrosoft.Windows.Themes 5   	   b ^PresentationFramework.Aero2, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5   	   ,    &JewelryStore.Desktop.Views.SalesWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:JewelryStore.Desktop.Views     5   	   `themesMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Classic     5   	   ]themeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     5   	   -   5          � Title$.  (Друк проданих виробів��5	   	   $	��838��6'   $	��838��67   $
��1000��6D   $	��750��6U   $	��750��6d   $	��750��6p    � WindowStartupLocation$ CenterScreen=�5
   '   $��Calibri)�6L   $��16(�6a    � 	Resources 5       �� 
TargetType   	BaseLabel �� Property �� Value  
BaseButton  BaseComboBox  ComboBox.Static.Background �� EndPoint �� 
StartPoint � Color	 � Offset  ComboBox.Static.Border
 �� Color  ComboBox.Static.Glyph ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background *	 &ComboBox.Static.Editable.Button.Border !
 ComboBox.MouseOver.Background  ComboBox.MouseOver.Border  ComboBox.MouseOver.Glyph * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border  ComboBox.Pressed.Background  ComboBox.Pressed.Border  ComboBox.Pressed.Glyph ( $ComboBox.Pressed.Editable.Background $  ComboBox.Pressed.Editable.Border / +ComboBox.Pressed.Editable.Button.Background + 'ComboBox.Pressed.Editable.Button.Border   ComboBox.Disabled.Background  ComboBox.Disabled.Border  ComboBox.Disabled.Glyph ) %ComboBox.Disabled.Editable.Background % !ComboBox.Disabled.Editable.Border 0 ,ComboBox.Disabled.Editable.Button.Background , (ComboBox.Disabled.Editable.Button.Border  ComboBoxToggleButton �� 
TargetType ��Name J� SnapsToDevicePixels F�Name �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� 
TargetName P� Property P� Value   ComboBoxTemplate1 �Name � ColumnDefinitions �Name � AllowsTransparency �� Mode5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name   Color �� MaxDropDownHeight  �� ElementName! ��Name" �� ClearTypeHint# ��Name$ ��Name% ��Name-  'System.Windows.Input.KeyboardNavigation&   DirectionalNavigation' d�Name( d� 	IsChecked) ��Name* �� SelectionBoxItemTemplate+ �� SelectionBoxItem#, �� SelectionBoxItemStringFormat- �� ContentStringFormat. J� IsHitTestVisible/ P� 
SourceName0 ]� 
Conditions1 �� Property��%9   &	        &	 J     &	     &	 m    &	 �    &	 "    &	 E    &	 h    &	 �    &		 �    &	
 �    &	 g    &	 �    &	 �    &	 �    &	 �    &	 {    &	 �    &	 +    &	 I    &	 l    &	 �    &	 �    &	 ?    &	 ]    &	 �    &	 �    &	 �    &	 �    &	     &	 1    &	 V    7  7  7  7  7  7  7 	 7  7 
 7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	  �    7  �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   5      �� 5   
   " ��6   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$	 5,2q�6(   �� 5       � ��$ 25(�6)   �� 5       � ��$	 2 1q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 2q�6'   �� 5       � ��$ 18(�6)   5      �� 5   
   $	 0,1&�6A   $	 0,0&�6P   .��5      � $
 #FFF��6   $		 0.0Q�6(   � 5      $
 #FFF��6   $		 1.0Q�6(   5       �� 5!   
   $
 	#FFACACAC��69   �� 5"   
   $
 	#FF606060��68   �� 5#   
   $
 	#FFFFFFFF��6F   �� 5$   
   $
 	#FFABADB3��6B   �� 5%   
   $
 Transparent��6M   �� 5&   
   $
 Transparent��6I   �� 5'   
   $	 0,1&�6D   $	 0,0&�6S   .��5(      � $
 #FFF��6   $		 0.0Q�6(   � 5)      $
 #FFF��6   $		 1.0Q�6(   5*      �� 5+   
   $

 #000��6<   �� 5,   
   $
 	#FF000000��6;   �� 5-   
   $
 	#FFFFFFFF��6I   �� 5.   
   $

 #FFF��6E   �� 5/   
   $	 0,1&�6T   $	 0,0&�6c   .��50      � $
 #FFF��6   $		 0.0Q�6(   � 51      $
 #FFF��6   $		 1.0Q�6(   52      �� 53   
   $

 #FFF��6L   �� 54   
   $	 0,1&�6B   $	 0,0&�6Q   .��55      � $
 #FFF��6   $		 0.0Q�6(   � 56      $
 #FFF��6   $		 1.0Q�6(   57      �� 58   
   $

 #FFF��6:   �� 59   
   $
 	#FF000000��69   �� 5:   
   $
 	#FFFFFFFF��6G   �� 5;   
   $

 #FFF��6C   �� 5<   
   $	 0,1&�6R   $	 0,0&�6a   .��5=      � $
 #FFF��6   $		 0.0Q�6(   � 5>      $
 #FFF��6   $		 1.0Q�6(   5?      �� 5@   
   $

 #FFF��6J   �� 5A   
   $
 	#FFF0F0F0��6?   �� 5B   
   $
 	#FFD9D9D9��6;   �� 5C   
   $
 	#FFBFBFBF��6:   �� 5D   
   $
 	#FFFFFFFF��6H   �� 5E   
   $
 	#FFBFBFBF��6D   �� 5F   
   $
 Transparent��6O   �� 5G   
   $
 Transparent��6K   �� 5H   
   " d�6-   .�5I      ��  �@�OverridesDefaultStyle$
 true��66   �� 5J       � ��$ false��6*   �� 5K       � |�$ false��6*   �� 5L       �@��	ClickMode$ Press=�6*   �� 5M       � �� 5N      �� 5O      " d�6&   .R�5P      �� $ templateRoot��6!   8��  $��0 0 0 1q�6p   8�� $
 true��6�   ._�5Q      �� $ splitBorder��6%   $��1q�6:   
������ $��Right=�6h   $��0q�6�   $
 true��6�   #��� r�6�   ._�5R   "   F� $ arrow��6'   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5S      5T       5U      ^� 5V       5W   "   �� 5X   &    60   �� *
IsEditable+ �� " �� true6�   �� 5Y   &    60   �� *IsMouseOver+ �� *Self+	 false6v   �� 5Z   &    60   �� *	IsPressed+ �� *Self+	 false6t   �� 5[   &    60   �� *	IsEnabled+ �� *Self+ true6t   .0�5]   "   �� $ templateRoot��6?   8   � ��6Y   �� 5^   "   $ templateRoot��6@   8   � ��6Z   �� 5_   "   $ splitBorder��6?   8   � ��6X   �� 5`   "   $ splitBorder��6@   8   � ��6Y   5a      P� 5b       �@J�IsMouseOver$
 true��6=   . �5c   "   �� $ arrow��69   8   � ��6L   5d      ^� 5e       5f   "   �� 5g   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5h   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5j   "   �� $ templateRoot��6?   8   � ��6Y   �� 5k   "   $ templateRoot��6@   8 	  � ��6Z   5l      ^� 5m       5n   "   �� 5o   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5p   &    60   �� *
IsEditable+ �� " �� true6�   .0�5r   "   �� $ templateRoot��6?   8 
  � ��6Y   �� 5s   "   $ templateRoot��6@   8   � ��6Z   �� 5t   "   $ splitBorder��6?   8   � ��6X   �� 5u   "   $ splitBorder��6@   8   � ��6Y   5v      P� 5w       � ��$
 true��6;   . �5x   "   �� $ arrow��69   8   � ��6L   5y      ^� 5z       5{   "   �� 5|   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5}   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       � {�$ false��6;   . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      5�      5�      5�      �� 5�   
   " ��64   .R�5�      � $ templateRoot��6   $
 true��6)    5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6   $
 true��6,   $��2��6F   $��1q�6�   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.��5�        $ shadow��63   $ Transparent��6C   #��z 6�   ��6W   �� *ActualWidth+$  templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   $��1q�6   #��� ��6�   ._�5�      �� $! DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $" Enabled=�65   .+�5�   &   �� $# canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $$ 
opaqueRect��64   ��6H   �� *
Background+$  dropDownBorder����6�   �� *ActualHeight+$  dropDownBorder����6�   �� *ActualWidth+$  dropDownBorder��5�   '   �� 5�   &   $% ItemsPresenter��65   $& 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $' toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  ( 6�   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+66  �� 5�      $) contentPresenter��6#   #��z* 6=   #��z+ 6z   #��z��6�   #- z, 6�   #��z��6-  $. false��6p  #��z��6�  # z 6�  #��z��6�  5�       5�      P� 5�      $/ 
PART_Popup��63    �@�HasDropShadow$
 true��6K   . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems$ false��6.   . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5�      ]� 5�      0 5�      �� 5�      1 �@��
IsGrouping$
 true��6:   �� 5�      "1 �@%�IsVirtualizingWhenGrouping$ false��6\   ./�5�      ��  � ��$ false��6F   5�      P� 5�      $/ DropDownScrollViewer��6C    � ��$ false��6e   . �5�      �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$  DropDownScrollViewer�� �@��Top�� 5�      $ 
opaqueRect��64    6L   �� *HorizontalOffset+$  DropDownScrollViewer�� �@��Left5�      5�      5�      .��5�      � 2 � RowDefinitions2 5�   
   �� 5�      $��* �6   �� 5�      $
��Auto �6   .+�5�   
   � -   5        $ 	PrintGrid��5�      $��0��6#   2 5�      �� 5�      $
��Auto �6    �� 5�      $��* �6    �� 5�      $
��Auto �6     5�      �� 5�      $	��200 �6#   �� 5�      $	��180 �6#   �� 5�      $	��160 �6#   �� 5�      $��* �6#   .+�5�      �� $��0��6   $��0��6%   $��5q�65   3 �� TextAlignment$
3 Left=�5�      $��Center=�6-   $��Calibri)�5�      $��18(�5�      $��Накладна №��5�      �� 5�      -   5        $��0��5�      $��0��6#   4 �� 	MaxLength$4 5��5�      $��50��6,   $��50��67   $��20��6E   5 J� RenderTransformOrigin$5 0.5,0.5&�5�      6 �� TextAlignment$6 Center=�66   $	��0.2q�5�      $
��Left=�5�      $��Center=�61   
���   �7 �� SelectionBrush7 �	#FF008EFF$��	115,0,0,0q�5�   E   �� 5�      -   5        $��
CbSupplier��5�   F   $��0��5�      $��1��6$   #���   5�      #��[ 5�      $��Center=�5�      $��Center=�5�      $5 0.5,0.5&�5�      $	��160��5      $��25��6#   5
     (  "System.Windows.Controls.DatePicker  5     -   5        8  Name$8 dtFind��5     $��0��5     $��2��6&   $	��120��66   $��25��6B   5  )     5     -   5        $8 dtFind2��5     $��0��5     $��3��6&   $	��120��66   $��25��6B   5  *   &   System.Windows.Controls.DataGrid  5     -   5        9  Name$9 DataGrid��5     $��4��5     $��0��5     $��1��5     :   AutoGenerateColumns$: False��5     $	��700��5     $	��750��6&   ;   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$; * 5     <   
IsReadOnly$
< True��5     $=   HorizontalScrollBarVisibility$= Hidden=�5     >   Columns> 5     0  *System.Windows.Controls.DataGridTextColumn  5     ,  &System.Windows.Controls.DataGridColumn?   MinWidth$? 40Q�6)   @   MaxWidth$@ 40Q�67   A   Header$	A №��6E   1  +System.Windows.Controls.DataGridBoundColumnB   BindingB 6P   �� C �� Path$C ShowId�  5     $? 90Q�6)   $	@ 300Q�67   $A Артикул��6F   B 6W   �� $C ProdItem�  5     $? 90Q�6)   $	@ 300Q�67   $A Штрих-код��6F   B 6Y   �� $C BarCode�  5     -   5        
DateColumn��$	? 100Q�5  =   $	@ 300Q�6L   $A Дата прод.��6[   B 6o   �� $C SaleDateString�  5      $	? 100Q�6)   $	@ 300Q�68   $A 
Назва��6G   B 6V   �� $C ProdGroupString�  5!     $? 70Q�6)   $	@ 120Q�67   $A Ч. вага��6F   B 6W   �� $C ClearWeight�  5"     $? 50Q�6)   $	@ 120Q�67   $A Вага��6F   B 6T   �� $C Weight�  5#     $? 80Q�6)   $	@ 200Q�67   $A Ціна роб.��6F   B 6Y   �� $C PriceForTheWork�  5$     $? 80Q�6)   $	@ 200Q�67   $A Ціна��6F   B 6T   �� $C Price�5&     �� 5(     $��4��6   $��0��6-   $��2��6=   D �� Orientation$D 
Horizontal=�6J   .+�5)     �� $��	20,0,20,0q�6   $
��Bold"�6/   Всього:6J   �� 5*     $��0,0,5,0q�6   Чистої ваги:6;   �� 5+     -	   5        E ��Name$E ClearWeightTb��5+     $��0,0,10,0q�63   ХХ6I   �� 5,     $��0,0,5,0q�6   	Ваги:64   �� 5-     -
   5        $E WeightTb��5-     $��0,0,10,0q�6.   ХХ6D   �� 5.     $��0,0,5,0q�6   Ціни за роботу:6>   �� 5/     -   5        $E WorkPriceTb��5/     $��0,0,10,0q�61   ХХ6G   �� 50     $��0,0,5,0q�6   Ціна за продаж:6>   �� 51     -   5        $E PriceTb��51     ХХ61   52     53     �� 55  
   -   5        $��1��55     $��Друк��69   #��[ 6H   56     57     