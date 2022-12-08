using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace evote
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            count = count + 1;

            Label1.Text = RadioButtonList1.SelectedValue;

            txtCount.Text = count.ToString();

        }
}
}