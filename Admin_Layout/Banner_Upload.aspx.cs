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
    public partial class Banner_Upload : System.Web.UI.Page
    {

        SqlConn c = new SqlConn();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
       
        protected void Upload_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    string uniqueFileName = Guid.NewGuid().ToString() + Path.GetExtension(fileName);
                    string filePath = "/Upload/Banner" + uniqueFileName;
                    string serverPath = Server.MapPath(filePath);
                    FileUpload1.SaveAs(serverPath);
                    cmd.CommandText = "INSERT INTO Banner(ImageBanner) VALUES (@banner)";
                    cmd.Parameters.AddWithValue("@banner", filePath);
                    c.ExecuteQuerry(cmd);
                    GridView1.DataBind();
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Upload successful');", true);
                   
                }
                catch (Exception ex)
                {
                    
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", $"alert('Error: {ex.Message}');", true);
                }
            }
            else
            {
               
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Please select a file to upload.');", true);
            }
        }
    }

}



