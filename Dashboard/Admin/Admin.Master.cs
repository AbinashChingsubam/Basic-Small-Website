using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INMP_Website.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user is logged in
            if (Session["Username"] == null)
            {
                Response.Redirect("/Login.aspx");
            }
            else if (Session["Role"] == null || !Session["Role"].ToString().Equals("Admin"))
            {
                Response.Redirect("~/AccessDenied.aspx");
            }
            else
            {
                // Display the username
                Lbl_Username.Text = Session["Username"].ToString();
            }
        }

        protected void Lnk_Sign_Out_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("/Login.aspx");
        }
    }
}