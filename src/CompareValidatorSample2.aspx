<%@ Page
	Language           = "C#"
	AutoEventWireup    = "false"
	ValidateRequest    = "false"
	EnableSessionState = "false"
%>
<script runat="server">
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
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>ASP.NET Compare validator sample 2</title>		
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
		<p></p>
    <table>
    <tr>
        <td>Decimal average</td>
        <td><asp:TextBox ID="txtAverage" runat="server">
        </asp:TextBox></td>
        <td><asp:CompareValidator ID="cmpvtxtAverage" runat="server" 
        Type="Double" 
        ControlToValidate="txtAverage" 
        Operator="DataTypeCheck" 
        ErrorMessage="* must be decimal">
        </asp:CompareValidator>
        <asp:RequiredFieldValidator id="reqvtxtAverage" 
        Runat="Server" 
        ControlToValidate="txtAverage" 
        ErrorMessage="* required">
        </asp:RequiredFieldValidator></td>
    </tr>
    </table>
    <table>
    <tr>
    <td colspan="4">Type 2 integers,the second integer must be greater than first</td>
    </tr>
    <tr>
        <td>First integer</td>
        <td colspan="2">
			<asp:TextBox ID="txtValue1" 
        	runat="server">
        	</asp:TextBox>
		</td>
		<td>
        	<asp:RequiredFieldValidator id="reqvtxtValue1" 
        	Runat="server" 
        	ControlToValidate="txtValue1" 
        	ErrorMessage="* required">
        	</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
        <td>Second integer</td>
        <td colspan="2">
			<asp:TextBox ID="txtValue2" 
        	runat="server">
        	</asp:TextBox>
		</td>
		<td>
        <asp:RequiredFieldValidator id="reqvtxtValue2" 
        Runat="server" 
        ControlToValidate="txtValue2" 
        ErrorMessage="* required">
        </asp:RequiredFieldValidator>
		</td>
    </tr>
    <tr>
        <td colspan="4">
        <asp:CompareValidator ID="cmpvTwoNumbers" 
        runat="server" 
        ControlToValidate="txtValue1" 
        ControlToCompare="txtValue2"
		Type="Integer"
        Operator="LessThan" 
        ErrorMessage="* first value greater than second">
        </asp:CompareValidator>
		</td>
    </tr>
    </table>
	<br>
    <asp:Button id="btnSubmit" 
    runat="server" 
    Text="Send"></asp:Button>
	<p><asp:Label id="lblMsg" 
	Runat="server">
	</asp:Label></p>
		</form>
	</body>
</html>
