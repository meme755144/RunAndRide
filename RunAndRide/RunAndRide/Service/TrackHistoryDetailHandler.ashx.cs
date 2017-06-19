using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;

namespace RunAndRide.Service
{
    /// <summary>
    /// TrackHistoryDetailHandler 的摘要描述
    /// </summary>
    public class TrackHistoryDetailHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            String userId = context.Request["userId"];
            String startTime = context.Request["startTime"];
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
            con.Open();
            string strSQL = "select Latitude, Longitude from TrackHistoryDetail where UserId = @userId and StartTime = @startTime order by GpsOrder";
            SqlCommand cmd = new SqlCommand(strSQL, con);
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@startTime", startTime);

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
}