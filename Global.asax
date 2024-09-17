<%@ Application Language="C#" %>

<script runat="server">

    static string _pagePath;
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
     

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    {
        // Code that runs when an unhandled error occurs
        //Response.Redirect("~/error.aspx");
        //Server.Transfer("Err.aspx");
      
        
        //Response.Redirect("~/Err.aspx");


        //-------------------------------------------------------------
        //Get the exception object
        //Exception exc = Server.GetLastError();
        //try
        //{

            //}
            //catch (Exception)
            //{

            //    Response.Redirect("err.aspx");
            //}

       //--------Custom HTML-------------
        string msgHTML = "<html><head><meta charset='utf-8'> <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'><meta http-equiv='x-ua-compatible' content='ie=edge'> <title>Website Request</title><link href='animation_css/bootstrap.css' rel='stylesheet'><link href='animation_css/mdb.min.css' rel='stylesheet'><link href='animation_css/style.css' rel='stylesheet'>&lt;script&gt; wow = new WOW({boxClass: 'wow', animateClass: 'animated', offset: 0, mobile: true, live: true } )wow.init(); &lt;/script&gt;</head><body><div style='height: 100vh'><div class='flex-center flex-column'><h2 class='wow zoomInRight mb-4' data-wow-iteration='1'>Website Request Error</h2><h5 class='wow bounceInLeft mb-3' data-wow-duration='5s'>Thank you for using our product. We're glad you're with us.</h5><p class='animated fadeIn text-muted'>MDB Team</p></div></div><script type='text/javascript' src='animation_css/jquery-3.2.1.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/popper.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/bootstrap.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/mdb.min.js'>&lt;/script&gt;</body></html>";
        //-------------------------------

        Exception exc = Server.GetLastError().GetBaseException();
        string errorMsg = "<b>Error in:</b></br>" + Request.Url.ToString() + "</br></br><b>Error Message:</b></br>" + exc.Message.ToString() + "</br></br><b>Stacktrace Error Message:</b></br>" + exc.StackTrace.ToString();

               
        //Handle HTTP errors
        if (exc.GetType() == typeof(HttpException))
        {
            //The complete Error Handling Example generates some errors using URLs with "NoCatch" in them;
            //ignore these here to simulate what would happen if a Global.asax handler not implemented.
            if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
                return;

            //Redirect HTTP errors to Custom HTTPError page [if u enable]
            //Response.Redirect("CustomError.aspx");
        }

        //For other kinds of erros give the user information but stay on the default page or make comment to show actual error
        //errorMsg = "<b>Sorry! Your request could not process at this moment, please try again later.";


        Response.Write("<br/><br/><div align=center><h2><em style='color:Navy;'>Website Application </em> - <i>User Request Error</i></h2></div>");
        Response.Write("<p align=center style='color:Red;'>" + errorMsg + "</p><br/><br/>");

        Response.Write("<div align=center >Return Process</br><a href='" + Request.Url.ToString() + "'>" + "Back to the Previous Page </a></div>");

        //Clear the error from the server
        Server.ClearError();


        //--------Custom Message HTML-------------
        //Response.Write("<html><head><meta charset='utf-8'> <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'><meta http-equiv='x-ua-compatible' content='ie=edge'> <title>Website Request</title><link href='animation_css/bootstrap.css' rel='stylesheet'><link href='animation_css/mdb.min.css' rel='stylesheet'><link href='animation_css/style.css' rel='stylesheet'></head><body><div style='height: 100vh'><div class='flex-center flex-column'> <img src='assets/img/logo1.png' width='110px' class='img-fluid text-center' /><h2 class='wow zoomInRight mb-4' data-wow-iteration='1'>Website Request Error</h2><h5 class='wow bounceInLeft mb-3' data-wow-duration='5s'>" + "<b>Error in:</b></br>" + Request.Url.ToString() + "</br></br><b>Error Message:</b></br>" + exc.Message.ToString() + "</br>" + "</h5><p class='animated fadeIn text-muted'>Webmaster Team</p></div></div><script type='text/javascript' src='animation_css/jquery-3.2.1.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/popper.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/bootstrap.min.js'>&lt;/script&gt;<script type='text/javascript' src='animation_css/mdb.min.js'>&lt;/script&gt;</body></html>");
        //-------------------------------
   

        //-------------------------------------------------------------------------------------
        //try
        //{


        //    Exception exc = Server.GetLastError().GetBaseException();
        //    string errorMsg = "<b>Error in:</b></br>" + Request.Url.ToString() + "</br></br><b>Error Message:</b></br>" + exc.Message.ToString();
        //    //Handle HTTP errors
        //    if (exc.GetType() == typeof(HttpException))
        //    {
        //        //The complete Error Handling Example generates some errors using URLs with "NoCatch" in them;
        //        //ignore these here to simulate what would happen if a Global.asax handler not implemented.
        //        if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
        //            return;

        //        //Redirect HTTP errors to Custom HTTPError page [if u enable]
        //        Response.Redirect("~/error.aspx");
        //    }
        //}
        //catch (Exception)
        //{
        //    Response.Redirect("~/error.aspx");

        //}
        
        //------------------------------------------
        //Dim lastError As Exception = Server.GetLastError()
        //If (lastError IsNot Nothing AndAlso lastError.Message <> "File does not exist.") AndAlso (lastError.Message <> "Thread was being aborted") AndAlso (lastError.Message <> "The client disconnected.") Then
        //    Dim errMessage As String = ""
        //    If (TypeOf (lastError) Is HttpException) Then
        //        Dim checkException As HttpException = DirectCast(lastError, HttpException)
        //        Dim httpErrorCode As Integer = checkException.GetHttpCode()
        //        Server.ClearError()
                
        //        Select Case httpErrorCode
        //            Case 401
        //                errMessage += "You are not authorized to view this page."
        //                Response.Redirect("~/Errorpage.htm")
        //                Exit Select
        //            Case 403
        //                errMessage += "You are not allowed to view that page."
        //                Response.Redirect("~/Errorpage.htm")
        //                Exit Select
        //            Case 404
        //                errMessage += "The page you have requested can't be found."
        //                Response.Redirect("~/Errorpage.htm")
        //                Exit Select
        //            Case 500
        //                errMessage += "The server can't fulfill your request."
        //                Response.Redirect("~/Errorpage.htm")

        //                Exit Select
        //            Case Else
        //                errMessage += "The server has experienced an error."
        //                Response.Redirect("~/Errorpage.htm")
        //                Exit Select
        //        End Select
        //    Else
        //        Server.ClearError()
        //        Response.Redirect("~/Errorpage.htm")
        //    End If
        //Else
        //    Server.ClearError()
        //    Response.Clear()
        //End If
        

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        // Code that runs on application startup
        //_pagePath = Server.MapPath("~/Links.htm");
       
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    void Application_BeginRequest(object sender, EventArgs e)
    {
        //string path = Request.PhysicalPath;
        //if (path == _pagePath)
        //{
        //    Response.Write("Page viewed");
        //    Response.End();
        //}
    }
       
</script>
