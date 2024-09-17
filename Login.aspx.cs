using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConn con = new SqlConn();
        SqlCommand cmd= new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
               
            //    Response.Redirect("~/Admin_Layout/Home.aspx");

            //}
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "SELECT * FROM login WHERE UserName=@username AND Password=@password";
            cmd.Parameters.AddWithValue("@username", usernametxt.Text);
            cmd.Parameters.AddWithValue("@password", passwordtxt.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dt = con.PopulateData(cmd);

            if (dt.Rows.Count > 0)
            {
                Session["username"] = usernametxt.Text;
                Session["Id"] = dt.Rows[0]["id"];



                Response.Redirect("Admin_Layout/Home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }

            usernametxt.Text = passwordtxt.Text = "";
        }
    }
}