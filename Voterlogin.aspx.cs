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
    public partial class Voterlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {

                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                Conn.Open();
                string checkuser = "select count(*) from Voterlist where Name='" + TextBoxUsername.Text + "'";


                
               
                SqlCommand com = new SqlCommand(checkuser, Conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());


                Conn.Close();
            }
        }

        protected void Buttonlog_Click(object sender, EventArgs e)
        {

            

            if (DropDownList1.SelectedItem.ToString() == "Ahmednagar")
            {
                Response.Redirect("Ahmednagar.aspx");
             }
            else if (DropDownList1.SelectedItem.ToString() == "Amravati")
            {
                Response.Redirect("Amravati.aspx");
            }
            else if (DropDownList1.SelectedItem.ToString() == "Chandrapur")
            {
                Response.Redirect("Chandrapur.aspx");
            }
            else if (DropDownList1.SelectedItem.ToString() == "Mumbai")
            {
                Response.Redirect("Mumbai.aspx");
            }
            else if (DropDownList1.SelectedItem.ToString() == "Nagpur")
            {
                Response.Redirect("Nagpur.aspx");
            }


            
        }

    }
}