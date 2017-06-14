using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using RunAndRide.Models;

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
            
            var user = manager.FindById(User.Identity.GetUserId());
            user.Email = "test2@gmail.com";
            user.UserName = "Ian Pan";
            user.PhoneNumber = "07-123-4567";
            manager.Update(user);
            //manager.UpdateAsync(user);
            Context.GetOwinContext().Get<ApplicationDbContext>().SaveChanges();



            //manager.SetPhoneNumber(User.Identity.GetUserId(), "0912345678");
            //manager.SetEmail(User.Identity.GetUserId(), "test@yahoo.com.tw");
            Label1.Text = user.Email;
            Label2.Text = user.UserName;
            Label3.Text = user.PhoneNumber;
            Label4.Text = user.Id;
            Label5.Text = User.Identity.GetUserId();
            //Context.User.Identity.GetUserName();
        }
    }
}