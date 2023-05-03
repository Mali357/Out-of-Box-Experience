using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Shapes;

namespace OOBE
{
	// Token: 0x02000003 RID: 3
	public partial class Aurora : Window
	{
		// Token: 0x06000004 RID: 4 RVA: 0x0000208B File Offset: 0x0000028B
		public Aurora()
		{
			this.InitializeComponent();
		}

		// Token: 0x06000005 RID: 5 RVA: 0x0000209C File Offset: 0x0000029C
		private void loaded(object sender, RoutedEventArgs e)
		{
			new MainWindow
			{
				Owner = Window.GetWindow(this)
			}.Show();
		}

		// Token: 0x06000006 RID: 6 RVA: 0x000020C4 File Offset: 0x000002C4
		private void auroraClosing(object sender, CancelEventArgs e)
		{
			e.Cancel = true;
		}
	}
}
