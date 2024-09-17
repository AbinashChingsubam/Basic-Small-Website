using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{
    public partial class UpdateCoverImage : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        SqlConn c = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Id = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(Id))
                {
             
                    cmd.CommandText = "SELECT Date, Title, AlbumCover FROM Album WHERE Id = @id";
                    cmd.Parameters.AddWithValue("@id", Id);

                    DataTable dt = c.PopulateData(cmd);
                    if (dt.Rows.Count > 0)
                    {
                   
                        DataRow row = dt.Rows[0];
                        datetxt.Text = Convert.ToDateTime(row["Date"]).ToString("yyyy-MM-dd");
                        titletxt.Text = row["Title"].ToString();

                        string albumCoverUrl = row["AlbumCover"].ToString();
                      

                        if (!string.IsNullOrEmpty(albumCoverUrl))
                        {
                            currentCoverImage.ImageUrl = albumCoverUrl;
                            currentCoverImage.Visible = true;
                        }

                        ViewState["CurrentAlbumCover"] = albumCoverUrl;
                    }
                }

            }
        } 

        protected void Update_Click(object sender, EventArgs e)
        {
            string newAlbumCoverUrl = null;

   
            if (FileUpload1.HasFile)
            {
                string filePath = "/Image/AlbumCover" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(filePath));
                newAlbumCoverUrl = filePath;
            }
            else
            {
                
                newAlbumCoverUrl = ViewState["CurrentAlbumCover"].ToString();
            }

      
            string Id = Request.QueryString["id"];
            cmd.CommandText = "UPDATE Album SET Date = @date, Title = @title, AlbumCover = @albumCover WHERE Id = @id";
            cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(datetxt.Text));
            cmd.Parameters.AddWithValue("@title", titletxt.Text);
            cmd.Parameters.AddWithValue("@albumCover", newAlbumCoverUrl);
            cmd.Parameters.AddWithValue("@id", Id);

            int i = c.ExecuteQuerry(cmd);
            if (i > 0)
            {


                Response.Redirect("Album.aspx?id=" + Id);
            }


            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Please select a file to upload.');", true);
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            Response.Redirect($"Album.aspx?id={id}");


        }
    }
}
