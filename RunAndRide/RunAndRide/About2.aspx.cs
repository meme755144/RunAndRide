using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace RunAndRide
{
    public partial class About : Page
    {

        protected void Page_Load2(object sender, EventArgs e)
        {
            String userId = System.Web.HttpContext.Current.User.Identity.GetUserId();
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
            con.Open();
            string strSQL = "select * from TrackHistory where UserId = @userId";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            cmd.Parameters.AddWithValue("@userId", userId);

            SqlDataReader reader = cmd.ExecuteReader();

            ArrayList eventList = new ArrayList();
            int i = 0;
            while (reader.Read() && i < 100)
            {
                Hashtable ht = new Hashtable();
                ht.Add("UserId", string.Format("{0}", reader["UserId"]));
                ht.Add("StartTime", string.Format("{0:yyyy-MM-dd HH:mm:ss}", reader["StartTime"]));
                ht.Add("SpendTime", string.Format("{0}", reader["SpendTime"]));
                ht.Add("Distance", string.Format("{0}", reader["Distance"]));
                ht.Add("Speed", string.Format("{0}", reader["Speed"]));
                ht.Add("Cal", string.Format("{0}", reader["Cal"]));
                ht.Add("Reward", string.Format("{0}", reader["Reward"]));

                lblSpeed.Text = string.Format("{0}", reader["Speed"]);

                eventList.Add(ht);
                i += 1;
            }

            reader.Close();
            con.Close();
        }
    }
}
