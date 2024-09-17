using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website
{
    public partial class Index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["PaamelConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT TOP 1 ImageBanner FROM Banner order by Id desc";

                using (SqlConnection con = new SqlConnection(cs))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    string imageUrl = (string)cmd.ExecuteScalar();
                    if (!string.IsNullOrEmpty(imageUrl))
                    {
                        ImageBanner.ImageUrl = imageUrl;
                       
                    }
                }
            }
        }
    }
}