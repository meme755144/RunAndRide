using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RunAndRide.Service
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // 這不算是因為帳戶鎖定而無法登入
                // 若要讓密碼失效以觸發鎖定，請變更 shouldLockout: true
                var result = signinManager.PasswordSignIn("test@gmail.com", "P@ssw0rd", true, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        Response.Write("true");
                        break;
                    case SignInStatus.LockedOut:
                        Response.Write("false");
                        break;
                    case SignInStatus.RequiresVerification:
                        //Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                        //                                Request.QueryString["ReturnUrl"],
                        //                                true),
                        //                  true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        //FailureText.Text = "無效的登入嘗試";
                        //ErrorMessage.Visible = true;
                        break;
                }
        }
    }
}