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

namespace RunAndRide
{
    public partial class About : Page
    {

        protected void Page_Load2(object sender, EventArgs e)
        { }

       public class TrackHistoryDetailHandler : IHttpHandler
        {

            public void ProcessRequest(HttpContext context)
            {
                String userId = context.Request["userId"];
                String startTime = context.Request["startTime"];
                String SpendTime = context.Request["SpendTime"];
                String Distance = context.Request["Distance"];
                String Speed = context.Request["Speed"];
                String Cal = context.Request["Cal"];
                String Reward = context.Request["Reward"];

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
                con.Open();
                string strSQL = "select Latitude, Longitude from TrackHistoryDetail where UserId = @userId and StartTime = @startTime order by @startTime";
                SqlCommand cmd = new SqlCommand(strSQL, con);
                cmd.Parameters.AddWithValue("@userId", userId);
                cmd.Parameters.AddWithValue("@startTime", startTime);
                cmd.Parameters.AddWithValue("@SpentTime", SpendTime);
                cmd.Parameters.AddWithValue("@Distance", Distance);
                cmd.Parameters.AddWithValue("@Speed", Speed);
                cmd.Parameters.AddWithValue("@Cal", Cal);
                cmd.Parameters.AddWithValue("@Reward", Reward);


                SqlDataReader reader = cmd.ExecuteReader();

                ArrayList eventList = new ArrayList();
                int i = 0;
                while (reader.Read() && i < 100)
                {
                    Hashtable ht = new Hashtable();
                    ht.Add("Latitude", string.Format("{0}", reader["Latitude"]));
                    ht.Add("Longitude", string.Format("{0}", reader["Longitude"]));

                    eventList.Add(ht);
                    i += 1;
                }

                reader.Close();
                con.Close();

                JavaScriptSerializer ser = new JavaScriptSerializer();
                String jsonStr = ser.Serialize(eventList);
                context.Response.Write(jsonStr);
            }

            public bool IsReusable
            {
                get
                {
                    return false;
                }
            }
        }

    } }
