   M S B A M L   `   `   `  ����?  ;OOBE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:OOBEOOBE  5         OOBE.MainWindow   6   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    6   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6^   @d2http://schemas.microsoft.com/expression/blend/2008     6�   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6�   $localclr-namespace:OOBE     6  -   5          � Title$  
MainWindow��5      $��569.877��5      $	��800��5       � WindowState$ 	Maximized=�5       � Topmost .  � WindowStyle$
 None=�5       � AllowsTransparency .  J� 	AllowDrop . ���	#00FFFFFF.��5      (� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    6   :x,http://schemas.microsoft.com/winfx/2006/xaml     6M    (� Stretch$ Uniform=�5      .��5      �� -   5        $��DocumentRootMainScene��5      ���	#00000000$��800px��5      $��600px��5      .+�5      �� $��340,520q�5      .+�5      �� $
��Bold"�5      $��Tahoma)�5      $	��8pt(�5      ���	#FFFFFFFF$��Right=�5      �� 5      $��Tahoma)�5      $	��8pt(�5      ���	#FFFFFFFF$��Right=�5       �� 5!      $��Tahoma)�5"      $	��8pt(�5#      ���	#FFFFFFFF$��Right=�5%      5&      � 5'      $	��473��5(       �� Left$ 73��5)      
 �� Top$ 59��5*      $	��663��5+      .+�5,      �� -   5        $��	pagesTabs��5-      ���	#00FFFFFF���	#00ACACAC$��0,-31,0,-33q�50      .@�52      �� $��1��53      ���	#00ACACAC$y�Hidden=�55      .��56      � ���	#00E5E5E5	 � ColumnDefinitions	 58   	   �� 59   
   $
��117* �5:   
   �� 5;   
   $
��404* �5<   
   �� 5=   
   $
��136* �5>   
   
 � RowDefinitions
 5@   	   �� 5A   
   $
��105* �5B   
   �� 5C   
   $
��170* �5D   
   �� 5E   
   $
��100* �5F   
   .+�5H   	   �� -   5        $
��flag��5I   	   $��1��5J   	   $I��Cpack://siteoforigin:,,,/Resources/exec_briefing_start.dir_1_386.png��5K   	   $	��126��5L   	   $	��Top=�5M   	   $��1��5N   	   �� 5O   	   $��10,101,10,0q�5P   	   $��1��5Q   	   $
��Wrap=�5R   	   $��Welcome to Windows!��5S   	   $	��Top=�5T   	   $��1��5U   	   $��31��5V   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5W   	   ���	#FFFFFFFF �� TextAlignment$ Center=�5Y   	   $��22(�5Z   	   $��Tahoma Bold)�5[   	   $��Center=�6"   �� 5\   	   -   5        $��welcometext��5]   	   $��1��5^   	   $��Center=�5_   	   $��10,7,0,0q�5`   	   $��2��5a   	   $
��Wrap=�5b   	   $���}Thank you for choosing Microsoft Windows! Setup will go through a few simple steps, then you can use Windows to it's fullest.��5c   	   $	��Top=�5d   	   $	��384��5e   	   $ Display=�5f   	   ���	#FFFFFFFF$ Center=�5h   	   $��Tahoma)�6     �� 
LineHeight$ 6��64   $��14(�6^   ��6C   Z� 6^   5i   	   5j      �� 5k      $��2��5l      ���	#00ACACAC$y�Hidden=�5n      .��5o      � ���	#00E5E5E5$��0q�5p      .+�5q   	   G� -   5        $
��pass��5r   	   $��243,154,216,0q�5s   	   $	��Top=�5t   	   $��23��5u   	   $��2q�5v   	   ���	#FFFFFFFF G� 
CaretBrush �	#FFFFFFFF��5y   
   �� 5z       �� EndPoint$ 0.5,1&�5{       �� 
StartPoint$ 0.5,0&�5|      .��5}      �  � Color$ 	#4C2D2D2E��5~       � Offset$ 0Q�5      � 5�      $ 	#FF818181��5�      $ 1Q�5�      5�      ��5�   
   �� 5�      $ 0.5,1&�5�      $ 0.5,0&�5�      .��5�      � $ 	#4C28282E��5�      $ 0Q�5�      � 5�      $ 	#7FDEDEDE��5�      $ 1Q�5�      � 5�      $ 	#99B8B8B8��5�      $ 0.979Q�5�      5�      5�   
   �� 5�   	   -   5        $
��user��5�   	   $��23��5�   	   $��243,110,216,0q�5�   	    �� TextWrapping$
 Wrap=�5�   	   $	��Top=�5�   	   $ Display=�5�   	   $��2q�5�   	    �� SelectionBrush �	#265B4E4E���	#FFFFFFFF �� SelectionOpacity$ 0Q�5�   	    �� 
CaretBrush �	#FFFFFFFF.��5�       ��5�   
   �� 5�      $ 0.5,1&�5�      $ 0.5,0&�5�      .��5�      � $ 	#BFAEABAB��5�      $ 0Q�5�      � 5�      $ 	#4C2D2D2E��5�      $ 1Q�5�      5�      .��5�      ��5�   
   �� 5�      $ 0.5,1&�5�      $ 0.5,0&�5�      .��5�      � $ 	#99B8B8B8��5�      $ 0Q�5�      � 5�      $ 	#7F2B1717��5�      $ 1Q�5�      � 5�      $ 	#4C28282E��5�      $ 0.979Q�5�      5�      .��5�      5�   
   �� 5�   	   $��2,33,0,0q�5�   	   $
��Wrap=�5�   	   $��Create a user account��5�   	   ���	#FFFFFFFF$��28(�5�   	   $��Tahoma Bold)�5�   	   $ Display=�5�   	    J� RenderTransformOrigin$ 
0.41,0.727&�5�   	   $��Center=�6,   $	��320��6I   $��50��6U   $	��Top=�6a   �� 5�   	   -   5        $��userpic��5�   	   $
��Left=�5�   	   $��93��5�   	   $��103,119,0,0q�5�   	   $	��Top=�5�   	   $��95��5�   	   $
��Fill=�5�   	   �� 5�   	   $
��Left=�5�   	   $	��134��5�   	   $��
82,101,0,0q�5�   	   $	��Top=�5�   	   $	��136��5�   	   $7��1pack://siteoforigin:,,,/Resources/PNGFILE1401.png��5�   	   $
��Fill=�5�   	   �� 5�   	   -	   5        $��	funnitest��5�   	   $��Center=�5�   	   $��
30,200,0,0q�5�   	   $
��Wrap=�5�   	   $)��#Type a username and a password in. ��5�   	   $	��Top=�5�   	   $ Display=�5�   	   ���	#FFFFFFFF$��Tahoma)�5�       $��14��64   �� 5�   	   -
   5        $
��test��5�   	   $
��Left=�5�   	   $��240,250,0,0q�5�   	   $
��Wrap=�5�   	   $D��>You can customize these settings further in the Control Panel.��5�   	   $	��Top=�5�   	   $ Display=�5�   	   ���	#FFFFFFFF$	��207��5�   	   $��Tahoma)�6   $ Center=�6)   �� 5�   	   -   5        $��userpic1��5�   	   $��
0,0,495,52q�5�   	   $��65��5�   	   $��Bottom=�5�   	   $��Right=�5�   	   $��69��5�   	   $
��Fill=�5�   	   �� 5�   	   -   5        $��userpic2��5�   	   $��
0,0,410,52q�5�   	   $��65��5�   	   $��Bottom=�5�   	   $��Right=�5�   	   $��69��5�   	   $
��Fill=�5�   	   �� 5�   	   -   5        $��userpic3��5�   	   $��
0,0,324,52q�5�   	   $��65��5�   	   $��Bottom=�5�   	   $��Right=�5�   	   $��69��5�   	   $
��Fill=�5   	   �� 5  	   -   5        $��userpic4��5  	   $��
0,0,237,52q�5  	   $��65��5  	   $��Bottom=�5  	   $��Right=�5  	   $��69��5  	   $
��Fill=�5  	   �� 5	  	   -   5        $��userpic5��5
  	   $��
0,0,152,52q�5  	   $��65��5  	   $��Bottom=�5  	   $��Right=�5  	   $��69��5  	   $
��Fill=�5  	   �� 5  	   -   5        $��userpic6��5  	   $��	0,0,67,52q�5  	   $��65��5  	   $��Bottom=�5  	   $��Right=�5  	   $��69��5  	   $
��Fill=�5  	   �� 5  	   -   5        $��userpicOverlay��5  	   $��
0,0,495,52q�5  	   $��65��5  	   $��Bottom=�5  	   $��Right=�5  	   $��69��5  	   $
��Fill=�5   	   $3��-pack://siteoforigin:,,,/Resources/PNG4149.png��5!  	   5"  	   5#     �� 5$     $��3��5%     ���	#00ACACAC$y�Hidden=�5'     .��5(     � ���	#00E5E5E5.+�5*  	   �� $
��Left=�5+  	   $��67��5,  	   $��
57,134,0,0q�5-  	   $	��Top=�5.  	   $��68��5/  	   $9��3pack://siteoforigin:,,,/Resources/Security - Ok.png��50  	   �� 51  	   $
��Left=�52  	   $��67��53  	   $��
57,233,0,0q�54  	   $	��Top=�55  	   $��68��56  	   $:��4pack://siteoforigin:,,,/Resources/Security Error.png��57  	   �� 58  	   $
��Left=�59  	   $��90��5:  	   $��	48,21,0,0q�5;  	   $	��Top=�5<  	   $��85��5=  	   $9��3pack://siteoforigin:,,,/Resources/Security - Ok.png��5>  	   �� 5?  	   -   5        $��radio1��5@  	   $
��Left=�5A  	   $��15��5B  	   $��
148,50,0,0q�5C  	   $	��Top=�5D  	   $��19��5E  	   $1��+pack://siteoforigin:,,,/Resources/radio.png��5F  	   5G  	   �� 5H  	   -   5        $
��Left=�5I  	   $��
176,47,0,0q�5J  	   $
��Wrap=�5K  	   $��Use recommended settings��5L  	   $	��Top=�5M  	   ���	#FFFFFFFF$��17(�5O  	   $��Tahoma Bold)�5P  	   $ Display=�5Q  	   5R  	   �� 5S  	   -   5        $��radio2��5T  	   $
��Left=�5U  	   $��15��5V  	   $��149,154,0,0q�5W  	   $	��Top=�5X  	   $��19��5Y  	   $1��+pack://siteoforigin:,,,/Resources/radio.png��5Z  	   5[  	   �� 5\  	   -   5        $
��Left=�5]  	   $��176,151,0,0q�5^  	   $
��Wrap=�5_  	   $$��Install important updates only��5`  	   $	��Top=�5a  	   ���	#FFFFFFFF$��17(�5c  	   $��Tahoma Semibold)�5d  	   $ Display=�5e  	   5f  	   �� 5g  	   -   5        $
��Left=�5h  	   $��176,254,0,0q�5i  	   $
��Wrap=�5j  	   $��Ask me later��5k  	   $	��Top=�5l  	   ���	#FFFFFFFF$��17(�5n  	   $��Tahoma)�5o  	   $ Display=�5p  	   5q  	   �� 5r  	   -   5        $��radio3��5s  	   $
��Left=�5t  	   $��15��5u  	   $��149,257,0,0q�5v  	   $	��Top=�5w  	   $��19��5x  	   $1��+pack://siteoforigin:,,,/Resources/radio.png��5y  	   5z  	   �� 5{  	   $
��Left=�5|  	   $��
177,70,0,0q�5}  	   $
��Wrap=�5~  	   $����Install important and recommended updates, help make browsing safer, check online for solutions for problems, and help Microsoft improve Windows.��5  	   $	��Top=�5�  	   ���	#FFFFFFFF$	��435��5�  	   $ Display=�5�  	   $��Tahoma)�62   �� 5�  	   $
��Left=�5�  	   $��177,180,0,0q�5�  	   $
��Wrap=�5�  	   $L��FOnly install security updates and other important updates for Windows.��5�  	   $	��Top=�5�  	   ���	#FFFFFFFF$	��435��5�  	   $ Display=�5�  	   $��Tahoma)�62   �� 5�  	   $
��Left=�5�  	   $��177,281,0,0q�5�  	   $
��Wrap=�5�  	   $N��HUntil you decide, your computer might be vulnerable to security threats.��5�  	   $	��Top=�5�  	   ���	#FFFFFFFF$	��435��5�  	   $ Display=�5�  	   $��Tahoma)�62   �� 5�  	   $��Center=�5�  	   $��
67,339,0,0q�5�  	   $
��Wrap=�5�  	   $	��Top=�5�  	   ���	#FFFFFFFF$	��538��5�  	   $ Display=�5�  	   $��65��5�  	   $����NOTE: Windows doesn't recieve any new updates anymore, which renders this tab useless, because every update until 2020 is bundled. It is still recommended to use the recommended settings, due to Windows being able to fetch updates released in the span of 2020 - 2023, but be careful, they might break certain features.��5�  	   $��Tahoma)�6O  5�  	   5�     �� 5�     $��4��5�     ���	#00ACACAC$y�Hidden=�5�     .��5�     � ���	#00E5E5E5
 5�  	   �� 5�  
   $	��59* �5�  
   �� 5�  
   $
��154* �5�  
   �� 5�  
   $
��171* �5�  
   	 5�  	   �� 5�  
   �� 5�  
   $
��111* �5�  
   �� 5�  
   $
��439* �5�  
   �� 5�  
   $
��106* �5�  
   .+�5�  	   �� -   5        $��	flagFinal��5�  	   $��2��5�  	   $I��Cpack://siteoforigin:,,,/Resources/exec_briefing_start.dir_1_386.png��5�  	   $	��126��5�  	   $	��Top=�5�  	   $��9,3,16,0q�5�  	   $��1��5�  	   �� 5�  	   $��15,117,40,0q�5�  	   $��1��5�  	   $
��Wrap=�5�  	   $%��Thank you for choosing Windows!��5�  	   $	��Top=�5�  	   $��2��5�  	   $��50��5�  	   $ Display=�5�  	   ���	#FFFFFFFF$ Center=�5�  	   $��19(�5�  	   $��Tahoma Bold)�5�  	   $	��410��6"   �� 5�  	   -   5        $��welcometext_Copy��5�  	   $��2��5�  	   $
��Left=�5�  	   $��56,9,0,0q�5�  	   $��2��5�  	   $
��Wrap=�5�  	   $e��_Windows is saving your preferences and user settings. Your will be brought to the login screen.��5�  	   $	��Top=�5�  	   $	��325��5�  	   $ Display=�5�  	   ���	#FFFFFFFF$ Center=�5�  	   $��14(�6    $��Tahoma)�6.   5�  	   5�     5�     �� 5�     -   5        $
��next��5�     $��613,420,10,10q�5�     $0��*pack://siteoforigin:,,,/Resources/next.png��5�     5�     �� 5�     -   5        $
��back��5�     $��10,434,624,10q�5�     $0��*pack://siteoforigin:,,,/Resources/back.png��5�     5�     5�     5�     5�     5�     