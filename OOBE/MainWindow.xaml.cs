using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using Microsoft.VisualBasic;

namespace OOBE
{
	// Token: 0x02000004 RID: 4
	public partial class MainWindow : Window
	{
		// Token: 0x06000009 RID: 9
		[DllImport("shell32.dll", CharSet = CharSet.Unicode, EntryPoint = "#262", PreserveSig = false)]
		public static extern void SetUserTile(string username, int notneeded, string picturefilename);

		// Token: 0x0600000A RID: 10 RVA: 0x00002788 File Offset: 0x00000988
		public MainWindow()
		{
			this.InitializeComponent();
			this.timer1 = new DispatcherTimer
			{
				Interval = TimeSpan.FromMilliseconds(30.0)
			};
			this.timer1.Tick += this.Timer1Tick;
			this.timer2 = new DispatcherTimer
			{
				Interval = TimeSpan.FromMilliseconds(30.0)
			};
			this.timer2.Tick += this.Timer2Tick;
			this.tabActions();
		}

		// Token: 0x0600000B RID: 11 RVA: 0x00002822 File Offset: 0x00000A22
		private void selection_change(object sender, SelectionChangedEventArgs e)
		{
			this.tabActions();
		}

		// Token: 0x0600000C RID: 12 RVA: 0x0000282C File Offset: 0x00000A2C
		private void nextclick(object sender, MouseButtonEventArgs e)
		{
			this.pagesTabs.SelectedIndex = this.pagesTabs.SelectedIndex + 1;
		}

		// Token: 0x0600000D RID: 13 RVA: 0x00002848 File Offset: 0x00000A48
		private void prevclick(object sender, MouseButtonEventArgs e)
		{
			this.pagesTabs.SelectedIndex = this.pagesTabs.SelectedIndex - 1;
		}

		// Token: 0x0600000E RID: 14 RVA: 0x00002864 File Offset: 0x00000A64
		private void Image_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			this.userpic.Source = ((Image)sender).Source;
			this.userpicOverlay.Margin = ((Image)sender).Margin;
		}

		// Token: 0x0600000F RID: 15 RVA: 0x00002895 File Offset: 0x00000A95
		private void nextHot(object sender, MouseEventArgs e)
		{
			this.next.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\nextprev.png"));
		}

		// Token: 0x06000010 RID: 16 RVA: 0x000028C7 File Offset: 0x00000AC7
		private void nextNormal(object sender, MouseEventArgs e)
		{
			this.next.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\next.png"));
		}

		// Token: 0x06000011 RID: 17 RVA: 0x000028F9 File Offset: 0x00000AF9
		private void backHot(object sender, MouseEventArgs e)
		{
			this.back.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\backhot.png"));
		}

		// Token: 0x06000012 RID: 18 RVA: 0x0000292B File Offset: 0x00000B2B
		private void backnormal(object sender, MouseEventArgs e)
		{
			this.back.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\back.png"));
		}

		// Token: 0x06000013 RID: 19 RVA: 0x00002960 File Offset: 0x00000B60
		private void option1click(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
		}

		// Token: 0x06000014 RID: 20 RVA: 0x000029FC File Offset: 0x00000BFC
		private void option2click(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
		}

		// Token: 0x06000015 RID: 21 RVA: 0x00002A98 File Offset: 0x00000C98
		private void option3click(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
		}

		// Token: 0x06000016 RID: 22 RVA: 0x00002B34 File Offset: 0x00000D34
		private void button1(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
		}

		// Token: 0x06000017 RID: 23 RVA: 0x00002BD0 File Offset: 0x00000DD0
		private void button2(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
		}

		// Token: 0x06000018 RID: 24 RVA: 0x00002C6C File Offset: 0x00000E6C
		private void button3(object sender, MouseButtonEventArgs e)
		{
			this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
		}

		// Token: 0x06000019 RID: 25 RVA: 0x00002D08 File Offset: 0x00000F08
		private void tabActions()
		{
			bool flag = this.pagesTabs.SelectedIndex + 1 < this.pagesTabs.Items.Count;
			if (flag)
			{
				this.next.Visibility = Visibility.Visible;
				this.back.Visibility = Visibility.Visible;
			}
			else
			{
				bool flag2 = this.pagesTabs.SelectedIndex + 1 == this.pagesTabs.Items.Count;
				if (flag2)
				{
					this.next.Visibility = Visibility.Hidden;
					this.back.Visibility = Visibility.Visible;
				}
			}
			bool flag3 = this.pagesTabs.SelectedIndex == 0;
			if (flag3)
			{
				this.next.Visibility = Visibility.Visible;
				this.back.Visibility = Visibility.Hidden;
			}
			bool flag4 = this.pagesTabs.SelectedIndex == 0;
			if (flag4)
			{
				this.timer1.Start();
			}
			else
			{
				this.timer1.Stop();
			}
			bool flag5 = this.pagesTabs.SelectedIndex == 1;
			if (flag5)
			{
				this.getUserPics();
				this.userpic.Source = this.userpic1.Source;
				this.userpicOverlay.Margin = this.userpic1.Margin;
			}
			bool flag6 = this.pagesTabs.SelectedIndex == 2;
			if (flag6)
			{
				this.radio1.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio2.png"));
				this.radio2.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
				this.radio3.Source = new BitmapImage(new Uri(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Resources\\radio.png"));
			}
			bool flag7 = this.pagesTabs.SelectedIndex == 3;
			if (flag7)
			{
				this.back.Visibility = Visibility.Hidden;
				this.timer2.Start();
				this.applySettingsAsync(this.user.Text, this.pass.Password, this.userpic.Source.ToString().Replace("file:///", "").Replace("/", "\\"));
				this.finaliseSettings();
			}
			else
			{
				this.timer2.Stop();
			}
		}

		// Token: 0x0600001A RID: 26 RVA: 0x00002F78 File Offset: 0x00001178
		private void getUserPics()
		{
			for (int i = 0; i < 6; i++)
			{
				Image image = (Image)base.FindName("userpic" + (i + 1).ToString());
				bool flag = File.Exists(Environment.GetEnvironmentVariable("programdata") + "\\Microsoft\\User Account Pictures\\Default Pictures\\usertile" + (i + 1).ToString() + ".bmp");
				if (flag)
				{
					image.Source = new BitmapImage(new Uri(Environment.GetEnvironmentVariable("programdata") + "\\Microsoft\\User Account Pictures\\Default Pictures\\usertile" + (i + 1).ToString() + ".bmp"));
				}
				image.MouseLeftButtonDown += this.Image_MouseLeftButtonDown;
			}
		}

		// Token: 0x0600001B RID: 27 RVA: 0x00003038 File Offset: 0x00001238
		private void Timer1Tick(object sender, EventArgs e)
		{
			this.flag.Source = new BitmapImage(new Uri(string.Concat(new object[]
			{
				Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),
				"\\flag\\",
				this.imageIndex,
				".png"
			})));
			int num = this.imageIndex + 1;
			this.imageIndex = num;
			bool flag = num == 41;
			if (flag)
			{
				this.imageIndex = 1;
			}
		}

		// Token: 0x0600001C RID: 28 RVA: 0x000030BC File Offset: 0x000012BC
		private void Timer2Tick(object sender, EventArgs e)
		{
			this.flagFinal.Source = new BitmapImage(new Uri(string.Concat(new object[]
			{
				Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),
				"\\flag\\",
				this.imageIndex,
				".png"
			})));
			int num = this.imageIndex + 1;
			this.imageIndex = num;
			bool flag = num == 41;
			if (flag)
			{
				this.imageIndex = 1;
			}
		}

		// Token: 0x0600001D RID: 29 RVA: 0x0000313D File Offset: 0x0000133D
		private void closing(object sender, CancelEventArgs e)
		{
			e.Cancel = true;
		}

		// Token: 0x0600001E RID: 30 RVA: 0x00003148 File Offset: 0x00001348
		private async void applySettingsAsync(string username, string pass, string userpicPath)
		{
			bool flag = !string.IsNullOrEmpty(username) && !string.IsNullOrWhiteSpace(username);
			if (flag)
			{
				MainWindow.SetUserTile(Environment.UserName, 0, userpicPath);
				bool flag2 = !string.IsNullOrEmpty(pass) && !string.IsNullOrWhiteSpace(pass);
				if (flag2)
				{
					await Task.Run<int>(() => Interaction.Shell(string.Concat(new string[]
					{
						Environment.GetEnvironmentVariable("windir"),
						"\\system32\\cmd.exe /c net user ",
						Environment.UserName,
						" ",
						pass
					}), AppWinStyle.Hide, true, -1));
				}
				await Task.Run<int>(() => Interaction.Shell(string.Concat(new string[]
				{
					Environment.GetEnvironmentVariable("windir"),
					"\\system32\\cmd.exe /c wmic useraccount where name='",
					Environment.UserName,
					"' rename \"",
					username,
					"\""
				}), AppWinStyle.Hide, false, -1));
			}
		}

		// Token: 0x0600001F RID: 31 RVA: 0x0000319C File Offset: 0x0000139C
		private void finaliseSettings()
		{
			Process proc = Process.Start(new ProcessStartInfo
			{
				FileName = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "Resources", "arun.exe"),
				WindowStyle = ProcessWindowStyle.Hidden,
				Arguments = " /EXEFilename \"" + Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "setupcomplete.exe") + "\" /WaitProcess 1 /RunAs 8 /Run"
			});
			proc.WaitForExit();
			Interaction.Shell(Environment.GetEnvironmentVariable("windir") + "\\system32\\cmd.exe /c shutdown.exe /l /f", AppWinStyle.Hide, false, -1);
		}

		// Token: 0x0400004E RID: 78
		private DispatcherTimer timer1;

		// Token: 0x0400004F RID: 79
		private DispatcherTimer timer2;

		// Token: 0x04000050 RID: 80
		private int imageIndex = 1;
	}
}
