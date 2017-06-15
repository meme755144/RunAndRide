using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RunAndRide.Service
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Request.QueryString["userName"];
            String pwd = Request.QueryString["pwd"];


            var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var result = signinManager.PasswordSignIn(userName, pwd, true, false);
            
            switch (result)
            {
                case SignInStatus.Success:
                    var user = manager.FindByName(userName);
                    //String strResponse = "true\n" + user.Email + "\n" + user.UserName + "\n" + user.PhoneNumber;
                    //Response.Write("[{\"userName\":\"" + user.UserName + "\",\"email\":\"" + user.Email + "\"}]");
                    Hashtable hs = new Hashtable();
                    hs.Add("userID", user.Id);
                    hs.Add("userName", user.UserName);
                    hs.Add("userEmail", user.Email);
                    hs.Add("userPhone", user.PhoneNumber);
                    
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    String response = js.Serialize(hs);

                    Response.Write(response);
                    break;
                case SignInStatus.LockedOut:
                case SignInStatus.RequiresVerification:
                case SignInStatus.Failure:
                default:
                    Response.Write("false"+userName+pwd);
                    break;
            }

        }
    }
}