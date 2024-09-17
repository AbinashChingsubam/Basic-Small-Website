using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website
{
    public partial class GalleryCover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected static int GetPhotoCount(int albumId)
        {
            int count = 0;
            string connectionString = "Data Source=LAPTOP-ET4RAI0R\\SQL2019;Initial Catalog=Paamel;Persist Security Info=True;User ID=sa;Password=cubeten;";
            string query = "SELECT COUNT(*) FROM AlbumPic  WHERE AlbumId = @AlbumId";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@AlbumId", albumId);
                connection.Open();
                count = (int)command.ExecuteScalar();
            }

            return count;
        }
    }
}