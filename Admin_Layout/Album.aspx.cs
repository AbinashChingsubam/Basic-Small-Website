using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{
    public partial class Album : System.Web.UI.Page
    {
        SqlConn con = new SqlConn();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string Id = Request.QueryString["id"];

                foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                {

                    string fileName = Path.GetFileName(file.FileName);


                    string filePath = "/Image/Album/" + Guid.NewGuid().ToString() + Path.GetExtension(fileName);


                    file.SaveAs(Server.MapPath(filePath));


                    cmd.CommandText = "Insert into AlbumPic(Album_Id, Image, Description) Values (@albumid, @image, @description)";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@albumid", Id);
                    cmd.Parameters.AddWithValue("@image", filePath);
                    cmd.Parameters.AddWithValue("@description", Desctxt.Text);


                    con.ExecuteQuerry(cmd);
                } 
                Desctxt.Text = "";
                GridView2.DataBind();



            }
            else
            {

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Please select a file to upload.');", true);
            }
        }

      

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {

                int rowIndex = Convert.ToInt32(e.CommandArgument);


                if (rowIndex >= 0 && rowIndex < GridView1.Rows.Count)
                {

                    GridViewRow row = GridView1.Rows[rowIndex];
                    string id = GridView1.DataKeys[rowIndex].Value.ToString();


                    Response.Redirect($"UpdateCoverImage.aspx?id={id}");
                }
                else
                {

                    Response.Write("Error: Row index out of range.");
                }
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumCover.aspx");
        }
    }
}