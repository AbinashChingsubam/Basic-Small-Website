using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paamel_Foundation_Website.Admin_Layout
{
    public partial class CoverList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Id=Request.QueryString["id"];
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            LinkButton btnEdit = (LinkButton)sender;
            string Id = btnEdit.CommandArgument;

            
            Response.Redirect($"Album.aspx?ID={Id}");
        }
    }
}