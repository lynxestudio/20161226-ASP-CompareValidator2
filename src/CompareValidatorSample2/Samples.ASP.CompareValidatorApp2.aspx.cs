using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samples.ASP
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public class CompareValidatorApp2 : Page
	{
		protected Button btnSubmit;
		protected TextBox txtAverage;
		protected CompareValidator cmpvtxtAverage;
		protected RequiredFieldValidator reqvtxtAverage;
		protected RequiredFieldValidator reqvtxtValue1;
		protected TextBox txtValue2;
		protected RequiredFieldValidator reqvtxtValue2;
		protected CompareValidator cmpvTwoNumbers;
		protected Label lblMsg;



		protected override void OnInit(EventArgs e)
		{
			this.Load += new EventHandler(g_Load);
			this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
		}

		protected void g_Load(Object o, EventArgs e) { }
		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			if (Page.IsValid)
			{
				lblMsg.Text = "All values are fine!";
			}
		}

	}
}