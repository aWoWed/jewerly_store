﻿#pragma checksum "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "C39F3FE4B9B37E50B51586A8622ADF863F8511C4"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using JewelryStore.Desktop.Views.ProductsWindows;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace JewelryStore.Desktop.Views.ProductsWindows {
    
    
    /// <summary>
    /// ScanWindow
    /// </summary>
    public partial class ScanWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 38 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBox;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox ListBox;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/JewelryStore.Desktop;component/views/productswindows/scanwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 38 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            this.TextBox.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.TextBoxes_OnPreviewSpaceClicked);
            
            #line default
            #line hidden
            
            #line 38 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            this.TextBox.KeyDown += new System.Windows.Input.KeyEventHandler(this.TextBox_OnKeyDown);
            
            #line default
            #line hidden
            
            #line 38 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            this.TextBox.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.IntPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 2:
            this.ListBox = ((System.Windows.Controls.ListBox)(target));
            
            #line 39 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            this.ListBox.KeyDown += new System.Windows.Input.KeyEventHandler(this.ListBox_OnKeyDown);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 40 "..\..\..\..\..\Views\ProductsWindows\ScanWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ButtonBase_OnClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

