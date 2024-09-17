using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INMP_Website.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB_INMP"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int userCount = GetUserCount();
                int notificationCount = GetNotificationCount();
                int conferenceCount = GetConferenceCount();
                int publicationCount = GetPublicationCount();
                int bulletinCount = GetBulletinCount();
                int photoCount = GetPhotoCount();

                userCounterHeading.Attributes["data-purecounter-end"] = userCount.ToString();
                notificationCounterHeading.Attributes["data-purecounter-end"] = notificationCount.ToString();
                conferenceCounterHeading.Attributes["data-purecounter-end"] = conferenceCount.ToString();
                publicationCounterHeading.Attributes["data-purecounter-end"] = publicationCount.ToString();
                bulletinCounterHeading.Attributes["data-purecounter-end"] = bulletinCount.ToString();
                photoCounterHeading.Attributes["data-purecounter-end"] = photoCount.ToString();
            }
        }

        protected int GetUserCount()
        {
            string query = "SELECT COUNT(*) FROM TB_User";
            return ExecuteScalarQuery(query);
        }

        protected int GetNotificationCount()
        {
            string query = "SELECT COUNT(*) FROM TB_Notification_Content";
            return ExecuteScalarQuery(query);
        }

        protected int GetConferenceCount()
        {
            string query = "SELECT COUNT(*) FROM TB_Conference_Content";
            return ExecuteScalarQuery(query);
        }

        protected int GetPublicationCount()
        {
            string query = "SELECT (SELECT COUNT(*) FROM TB_Publication_With_Image_Content) + (SELECT COUNT(*) FROM TB_Publication_Without_Image_Content)";
            return ExecuteScalarQuery(query);
        }

        protected int GetBulletinCount()
        {
            string query = "SELECT COUNT(*) FROM TB_Bulletin_Content";
            return ExecuteScalarQuery(query);
        }

        protected int GetPhotoCount()
        {
            string query = "SELECT COUNT(*) FROM TB_Gallery_Content";
            return ExecuteScalarQuery(query);
        }

        protected int ExecuteScalarQuery(string query)
        {
            int count = 0;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                count = (int)command.ExecuteScalar();
            }

            return count;
        }
    }
}