   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  EZ Media Player��5   	   $	��650��6!   $
��1124��6.   .��5
      � $��
0,0,-1,-21q�6   ���	#FF003A35 � RowDefinitions 5   
   �� 5      $
��251* �6   �� 5      $
��340* �6   .+�5   
   �� 
���   �$
��Left=�6!   $	��573��6<   $��2��6I   
���   �$	��Top=�6i   $
��1025��6�   �� 5   
   
�������$����EZ Media Player

1. Click Load to Open File
2. Click Play button to Start the Video
3. Click Pause Button to Pause the Video
4. Click Stop Button to Close the Video
5. Use Seek Bar to Jump to the Part of Video as You Want
6. Use Volume Slider to Control the Volume��6'   $
��Left=�6[  $	��266��6v  $��180,175,0,0q�6�  $��2��6�  $	��Top=�6�  $	��736��6�  $��24(�6�  $
��Bold"�6�  $��Century Gothic)�6�  r� 5   
   -   5         r�Name$ MediaElement1��5   b    r� LoadedBehavior$ Manual=�6    r� ScrubbingEnabled .  r� UnloadedBehavior$ Manual=�6H   $
��Left=�6�   $	��600��6�   $	��Top=�6�   $
��1024��6�   $��2��6�   $��1,2,0,0q�6�   �� 5   
   -   5        $
��Play��5      $
��Left=�6    $	��Top=�6;   $��76��6S   $��1029,91,0,0q�6^    J� RenderTransformOrigin$ 	0.586,5.9&�6s   6�   �� 5   
   -   5        $��Pause��5      $
��Left=�6!   $��1029,175,0,73q�6<   $��74��6S   6^   �� 5   
   -   5        $
��Load��5      $
��Left=�6    $��
1029,2,0,0q�6;   $	��Top=�6O   $��74��6g   6r   �� 5   
   -   5        $
��Stop��5      $
��Left=�6    $��1029,264,0,0q�6;   $	��Top=�6Q   $��74��6i   $��2��6�   �� 5   
   $��Center=�6   $��0,306,119,26q�60   $��36��6F   $��1��6R   .+�5      �� -   5         ��Name$ slider1��5   9    J� 	AllowDrop . 	 �� IsSnapToTickEnabled	 . $��28��6}   $��2,0,3,0q�6�   $ 0.5,0.5&�6�   
 � Value
 5   9   �� *
Position+ �� ElementName$ MediaElement1�� � Maximum 6o   �� *NaturalDuration+$ MediaElement1�� � DataContext 5   K   �� $ MediaElement1��z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6)   �� 5      �� 5      T� 5       5!      5#      5%      �� 5&   
   $��Center=�6   $��1041,48,22,158q�60   $	��162��6H   $��1��6U   .+�5'      �� -   5        $ slider2��5)   $   $��3,0,15,0q�5'       � Minimum$ 1Q�5(      $ 10Q�6    �� Orientation$ Vertical=�5)      $	��133��65   $	
 7.5Q�6B   $ 0.373,0.496&�6N   z�5*      V� 5+      .~�5,      �� �� 5-      �� 5.       �� Angle$ -0.199Q�6*   T� 5/       T� X$ 10.291Q�6-    T� Y$ 5.053Q�68   50      52      53      �� 54   
   -   5         ��Name$ Volume��54      $��Volume��6!   $
��Left=�62   $��1043,210,0,0q�6M   $��1��6c   $	��Top=�6p   ���	#00000000$
��Bold"�6�   $��Lucida Sans Typewriter)�6�   
�������6�   56      57      