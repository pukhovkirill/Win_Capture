   M S B A M L   `   `   `  ����F  BWin capture, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null+clr-namespace:AppUi.WindowAppUi.Window  5      =#clr-namespace:AppUi.Controls.WindowAppUi.Controls.Window  5      R NMicrosoft.Windows.Shell, Version=3.0.1.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:Microsoft.Windows.Shell;assembly=Microsoft.Windows.ShellMicrosoft.Windows.Shell 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   RayeWindowStyle  �� 
TargetType    AppUi.Window.RayeWindow �� Property �� Value*  $Microsoft.Windows.Shell.WindowChrome   ResizeBorderThickness   CaptionHeight   CornerRadius   GlassFrameThickness �� 
TargetType � 	Resources  Key	 �Name
 � RowDefinitions � ColumnDefinitions   IsHitTestVisibleInChrome �� RelativeSource �� AncestorType,   &AppUi.Controls.Window.WindowControlBox  Name   Fill   MinimizeBox �� Mode   MaximizeBox �� Triggers P� Property P� Value �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      %windowclr-namespace:AppUi.Window  5      /control#clr-namespace:AppUi.Controls.Window  5      PshellFclr-namespace:Microsoft.Windows.Shell;assembly=Microsoft.Windows.Shell  5      %�  &	        �� 5      "    6$   .�5   
   ��  � ��$	 300��6%   �� 5	   
    �@ WindowChrome 5
        5      $ 5q�6%   $ 25Q�6?   $ 0��6R   $ 0,0,0,1q�6c   5      �� 5   
    � �� 5      �� 5      "   6"    5      ���� 5       BooleanToVisibilityConverter 67   5      .R�5      � $
	 Grid��6   $��0q�6)   
�������
 5      �� 5      $
��30px �6,   �� 5      $��1* �6,   .+�5      � $��0��6    5      �� 5   "   $��1* �63   �� 5   "   $
��Auto �63   .+�5       � $��0��6#   .+�5!   "   ��  . ��63   �� *HeaderContent+ �� *FindAncestor+"   5"   3   5#      � 5$      $��1��6#   .+�5%   "     $ WindowControlBox��6;   $	��120��6U   
 �   � .  5&   ;   �� *MinimizeBox+ �� $ FindAncestor=�"    5'   ;   �� *MaximizeBox+ �� $ FindAncestor=�"   5(   ;   5)      5*      � 5+      $��1��6   .+�5,      �� #��z��6/   5-      5.       5/      P� 50       �@�WindowState$ 	Maximized=�69   . �51      �� $
 Grid��6%    � ��$ 8q�6I   52      54      56      57      58      