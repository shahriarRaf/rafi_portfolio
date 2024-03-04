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
    public partial class Home : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = string.Format("select [service_name],[service_description] FROM [table_service]");

            SqlConnection con =new SqlConnection(strcon);

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            servicesrepeater.DataSource = reader;
            servicesrepeater.DataBind();
            reader.Close();
            con.Close();
        }
    }
}