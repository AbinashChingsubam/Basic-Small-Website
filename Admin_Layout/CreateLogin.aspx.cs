using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{
    public partial class CreateLogin : System.Web.UI.Page
    {
        SqlConn c = new SqlConn();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Done_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert into Login(UserName,Password, ConfirmPassword)Values(@username,@password , @confirmpassword)";
            cmd.Parameters.AddWithValue("@username", usernametxt.Text);
            cmd.Parameters.AddWithValue("@password", passwordtxt.Text);
            cmd.Parameters.AddWithValue("@confirmpassword", confirmpassword.Text);
            int i=c.ExecuteQuerry(cmd);
            if (i > 0) 
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alertmessage", "alert('Created successfully');", true);

            }
           
            usernametxt.Text = passwordtxt.Text = confirmpassword.Text = ""; 
        }
    }
}