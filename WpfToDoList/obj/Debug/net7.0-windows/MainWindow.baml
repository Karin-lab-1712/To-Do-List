   M S B A M L   `   `   `  ����F  BWpfToDoList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfToDoListWpfToDoList  5   	       WpfToDoList.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WpfToDoList     5   	     � Title$  
To-Do List��5   	   $	��450��6   $	��600��6)    � 	Resources 5	         BoolToVisibilityConverter��%   &	        �� 5
   
   6'   5      .��5      � .+�5   
   �� $��10q�6    �� Orientation$ Vertical=�6!   .+�5      �� $ 
Horizontal=�6   $��Center=�62   .+�5      �� -   5         ��Name$ 	TaskInput��5      $	��400��6-   ��69   �� *
TaskText+ �� UpdateSourceTrigger$ PropertyChanged=��� 5      -   5         ��Name$ 
BtnAddTask��5      $��Add Task��6-   $	��100��6@   $��50��6L   $��30,0,0,0q�6X   ��6j   �� *AddTaskCommand+5      �� 5      -   5        $��TasksListBox��5      $	��350��6*   $��0,20,0,0q�6U   ��67   �� *Tasks+��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value
 ���� 67   �� 5       �@�OverridesDefaultStyle$
 True��6B   �� 5       � �� 5      �� 5   "   	 �� 
TargetType"	 ��62   .R�5   &   �� 
 ��Name$
 Bd��6-   #��z��69    �� Padding$ 2q�6c   ._�5   *   �� 5   '    �� Triggers 5   &   P� 5    *    P� Property �@J�IsMouseOver P� Value$
 True��6I   . �5!   .   ��  �� 
TargetName$ Bd��65    � ��
 ���� 6[   5"   +   P� 5#   *    �@��
IsSelected$
 True��6H   . �5$   .   �� $ Bd��65    � ��
 ���� 6[   5%   +   5'   #   5)      5*      ��5-      �� 5.      .R�5/      � $��5q�6    � ColumnDefinitions 50      �� 51   "   $��50 �63   �� 52   "   $��* �63   $	��450��6=   �� 53   "   $��50 �63   .+�56      �� $��0��6'   $��Center=�59   '    d� 	IsChecked 56   7   �� *IsDone+ �� Mode$ TwoWay=���57   '   �� *%#DataContext.ToggleTaskStatusCommand+ �� RelativeSource ��  �� AncestorType
 Window��58   '   �� 59   '   �� 5;      -   5        $��1��5;   &   
������ $��0q�5>   &    �� TextWrapping$
 Wrap=�5?   &   $��Center=�5C   &   ��5<   &   �� *Description+$ TwoWay=�$ PropertyChanged=� �� 
IsReadOnly 5@   &   �� *	IsEditing+  InverseBoolConverter �� 	Converter# [ ��5A   &   �� *IsDone+  DoneToColorConverter# [  �� TextDecorations 5B   &   �� *IsDone+ ! DoneToTextDecorationConverter# [ 5F   &   �� 5H      $	��❌��6%   $��2��61   
���  ��$��0q�5J   %   
������ $��20,0,0,0q�5L   %   $��25��5N   %   $��25��60   $��Center=�5O   %   $��Right=�5P   %   
 � Tag 5M   %   �� ��5Q   %   �� *DataContext.DeleteTaskCommand+ �� 
 Window��5R   %   �� 5S      5T      5V      5W      5X      5Y      