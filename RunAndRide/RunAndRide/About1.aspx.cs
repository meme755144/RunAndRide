using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace RunAndRide
{
    public partial class About : Page
    {
        protected void Page_Load1(object sender, EventArgs e)
        {

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            
            //var user = manager.FindById(User.Identity.GetUserId());
           
            //user.UserName = "NewUsername";
            //user.Email = "New@email.com";

            //manager.UpdateAsync(user);

            manager.SetPhoneNumber(User.Identity.GetUserId(), "0912345678");
            manager.SetEmail(User.Identity.GetUserId(), "test@yahoo.com.tw");
            Label1.Text = System.Web.HttpContext.Current.User.Identity.Name;
            Label2.Text = User.Identity.GetUserId();
            Label3.Text = manager.GetPhoneNumber(User.Identity.GetUserId());
            Label4.Text = manager.GetEmail(User.Identity.GetUserId());
            //Context.User.Identity.GetUserName();
            //Label5.Text = manager.GetUserName(User.Identity.GetUserId());
            
        }
    }
}