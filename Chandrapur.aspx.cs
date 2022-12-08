using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace evote
{
    public partial class Votervote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Voterlogin.aspx");
        }

        protected void Vote_Click(object sender, EventArgs e)
        {
              
        if (Request.Cookies["State"] == null) //check if cookies is null,in this we checking the user is already voted or not  
        {  
            foreach (ListItem item in RadioButtonList1.Items)  
            {  
  
                if (item.Selected == true)  
                {  
                    //in C:\\Users\\vithal\\Desktop\\vote\\Result.txt location  Votes are Saved Instead of Database  
                    FileStream fs1 = new FileStream("C:\\Users\\intel\\Desktop\\My Files\\mega\\evote\\evote\\Result.txt", FileMode.Append, FileAccess.Write);  
                    StreamWriter sw1 = new StreamWriter(fs1);  
                    sw1.WriteLine(item.Value);  
                    sw1.Flush();  
                    sw1.Close();  
                    sw1.Close();  
                    HttpCookie HC = new HttpCookie("State");  
                    HC.Values["State"] = "Set";  
                    HC.Expires = DateTime.Now.AddDays(2); //Added cookies Expires time  
                    Response.Cookies.Add(HC);  
                    Label3.Visible = true;  
                    Label3.ForeColor = Color.Green;  
                    Label3.Text = "You Have voted Sucessfully";  
  
                }  
  
  
            }  
  
  
        }  
        else  
        {  
            Label3.Visible = true;  
            Label3.ForeColor = Color.Red;  
            Label3.Text = "You are already Voted"; //if cookies not null means user is already voted  
          
        }  
    
        }

        protected void ViewVotes_Click(object sender, EventArgs e)
         
   {  
       int yes = 0;  
       int no = 0;
       FileStream fs2 = new FileStream("C:\\Users\\intel\\Desktop\\My Files\\mega\\evote\\evote\\Result.txt", FileMode.Open, FileAccess.Read);  
       StreamReader sr2 = new StreamReader(fs2);  
  
       sr2.BaseStream.Seek(0, SeekOrigin.Begin);  
       string str = sr2.ReadLine();  
       while (str != null)  
       {  
  
           if (str == "Yes")  
           {  
               yes = yes + 1;  
  
           }  
           if (str == "No")  
           {  
               no = no + 1;  
  
           }  
           str = sr2.ReadLine();  
  
       }  
       sr2.Close();  
       fs2.Close();  
       float a=(float)yes/(yes+no)*100;  
       int aresult = (int)a;  
       int bresult = 100 - aresult;  
       Label1.Visible = true;  
       Label1.ForeColor = Color.Brown;  
       Label1.Text ="Yes :"+"   "+"  "+ Convert.ToString(aresult) + " " + "%";  
       Label2.Visible = true;  
       Label2.ForeColor = Color.Brown;  
       Label2.Text = "No :"+"   "+"  "+Convert.ToString(bresult) + " " + "%";  
  
        }

       
    }
}