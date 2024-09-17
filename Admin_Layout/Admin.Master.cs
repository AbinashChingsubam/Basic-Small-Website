using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Lbl_Username.Text = Session["Username"].ToString();
            } 
            else
            {
                Response.Redirect("/Login.aspx");
            }
        }
      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Index.aspx");
        }
    }
}