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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text += Session["New"].ToString();
            }
            else {
                Response.Redirect("Log.aspx");
            }
            if (IsPostBack)
            {

                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                Conn.Open();
                string checkuser = "select count(*) from Candidate where Name='" + TextBoxsurname.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, Conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User Already exist");
                }

                Conn.Close();
            }
        }

        protected void next_Click(object sender, EventArgs e)
        {
             try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Candidate(Id,Name,Father_Name,Sex,Correspondence,Political_Affiliation,Occupation,Permanent_Address,Office_Address,Email,Telephone) values(@Id,@name,@fathername,@sex,@Correspondence,@political_affiliation,@occupation,@permanent_address,@office_address,@email,@telephone)";

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@Id", newGUID.ToString());
                com.Parameters.AddWithValue("@name",TextBoxsurname.Text);
                com.Parameters.AddWithValue("@fathername", TextBoxname.Text);
                com.Parameters.AddWithValue("@sex", DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Correspondence", DropDownList3.SelectedItem.ToString());
                com.Parameters.AddWithValue("@political_affiliation", DropDownList1.SelectedItem.ToString());
                 com.Parameters.AddWithValue("@occupation",TextBoxoccupation.Text);
                 com.Parameters.AddWithValue("@permanent_address",TextBoxpadd.Text);
                 com.Parameters.AddWithValue("@office_address",TextBoxcadd.Text);
                 com.Parameters.AddWithValue("@email",TextBoxemail.Text);
                 com.Parameters.AddWithValue("@telephone",TextBoxtele.Text);
                 

                com.ExecuteNonQuery();

               
                Response.Write("Registeration is successful"  );
                 Response.Redirect("RegCandidate.aspx");

  conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:"+ex.ToString());
            }
             
        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Write("Registration successful");
            Response.Redirect("log.aspx");
        }
        }

       
    }
