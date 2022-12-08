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
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
            Conn.Open();
            string checkuser = "select count(*) from UserData where UserName='" + TextBoxUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, Conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            Conn.Close(); 
            if (temp == 1)
            {
                Conn.Open();
                string checkPasswordQuery="select password from UserData where UserName='" + TextBoxUsername.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, Conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");

                if (password == TextBoxPassword.Text)
                {

                    Session["New"] = TextBoxUsername.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Registration.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                
                }
         }

            else
            {
                Response.Write("Username is not correct");

            }
            Conn.Close(); 
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

       
               
    }
}