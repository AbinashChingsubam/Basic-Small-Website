using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{

    public partial class AlbumCover : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        //SqlConnection conn = new SqlConnection();
        SqlConn c = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            //conn.ConnectionString = "Data Source=LAPTOP-ET4RAI0R\\SQL2019;Initial Catalog=Paamel;Persist Security Info=True;User ID=sa;Password=cubeten;";
            //if (!IsPostBack)
            //{
            //    string today = DateTime.Now.ToString("yyyy-MM-dd");
            //    datetxt.Text = today;


            //    datetxt.Attributes["min"] = today;
            //    datetxt.Attributes["max"] = today;
            //}
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            { 
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string filePath = "/Image/AlbumCover" + Guid.NewGuid().ToString() + Path.GetExtension(fileName);
                FileUpload1.SaveAs(Server.MapPath(filePath));
                cmd.CommandText = @"Insert into Album(Date, Title, AlbumCover) 
                    VALUES(@date, @title, @albumcover);
                    SELECT SCOPE_IDENTITY();";
                cmd.Parameters.AddWithValue("@date", datetxt.Text);
                cmd.Parameters.AddWithValue("@title", titletxt.Text);
                cmd.Parameters.AddWithValue("@albumcover", filePath);
                int Id =c.ExecuteScalar(cmd);
                Response.Redirect("Album.aspx?id=" + Id);

            }
            else
            {

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Please select a file to upload.');", true);
            }



        }
    }
}