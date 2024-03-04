using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rafi_portfolio
{
    public partial class servicesadmin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
           
        

        protected void submitButton_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert INTO table_service ([service_name],[service_description]) VALUES (@name,@des)", con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@des", TextBox2.Text.Trim());
               

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("~/Home.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}