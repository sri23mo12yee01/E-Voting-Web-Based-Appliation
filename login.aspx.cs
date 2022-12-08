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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (IsPostBack)
            {

                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                Conn.Open();
                string checkuser="select count(*) from UserData where UserName='"+TextBoxuname.Text+"'";
                SqlCommand com = new SqlCommand(checkuser,Conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               if(temp==1)
               {
               Response.Write("User Already exist");
               }

                Conn.Close();
            }
           
        }
       
        protected void Buttonsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserData(ID,UserName,Email,Password,Country,Phone) values(@ID,@uname,@email,@passwd,@country,@phone)";

                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.Parameters.AddWithValue("@uname",TextBoxuname.Text);
                com.Parameters.AddWithValue("@email", TextBoxemailid.Text);
                com.Parameters.AddWithValue("@passwd", TextBoxpass.Text);
                com.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.ToString());
                com.Parameters.AddWithValue("@phone", TextBoxmob.Text);
                com.ExecuteNonQuery();
               
                Response.Redirect("Registration.aspx");
               
                Response.Write("Registeration is successful"  );
                
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }
        }
    }
}