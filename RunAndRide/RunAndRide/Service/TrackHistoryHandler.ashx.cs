using Newtonsoft.Json;
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
    /// TrackHistoryHandler 的摘要描述
    /// </summary>
    public class TrackHistoryHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            if (context.Request["method"].Equals("insert"))
            {
                String UserId = context.Request["userId"];
                String StartTime = context.Request["StartTime"];
                double SpendTime = Convert.ToDouble(context.Request["SpendTime"]);
                double Distance = Convert.ToDouble(context.Request["Distance"]);
                double Speed = Convert.ToDouble(context.Request["Speed"]);
                double Cal = Convert.ToDouble(context.Request["Cal"]);
                int Reward = Convert.ToInt32(context.Request["Reward"]);
                String LatLngJson = context.Request["LatLngJson"];

                LatLng[] deserializedLatLng = JsonConvert.DeserializeObject<LatLng[]>(LatLngJson);

                // insert TrackHistory
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
                con.Open();
                string strSQL = "insert into TrackHistory(UserId,StartTime,SpendTime,Distance,Speed,Cal,Reward) " +
                                    "values (@UserId,@StartTime,@SpendTime,@Distance,@Speed,@Cal,@Reward)";
                SqlCommand cmd = new SqlCommand(strSQL, con);
                cmd.Parameters.AddWithValue("@UserId", UserId);
                cmd.Parameters.AddWithValue("@StartTime", "2017-06-19 15:27:50");
                cmd.Parameters.AddWithValue("@SpendTime", 120);
                cmd.Parameters.AddWithValue("@Distance", 50);
                cmd.Parameters.AddWithValue("@Speed", 20);
                cmd.Parameters.AddWithValue("@Cal", 150);
                cmd.Parameters.AddWithValue("@Reward", 1);
                cmd.ExecuteNonQuery();

                // insert LatLng
                strSQL = "insert into TrackHistoryDetail values (@UserId,@StartTime,@Latitude,@Longitude)";              
                cmd = new SqlCommand(strSQL, con);

                foreach (LatLng latlng in deserializedLatLng)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@UserId", UserId);
                    cmd.Parameters.AddWithValue("@StartTime", StartTime);
                    cmd.Parameters.AddWithValue("@Latitude", Convert.ToDouble(latlng.Latitude));
                    cmd.Parameters.AddWithValue("@Longitude", Convert.ToDouble(latlng.Longtitude));
                    cmd.ExecuteNonQuery();               
                }             

                con.Close();

                context.Response.Write("true");

            } else if (context.Request["method"].Equals("select"))
            {
                // select TrackHistory
                String userId = context.Request["userId"];
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

                    eventList.Add(ht);
                    i += 1;
                }

                reader.Close();
                con.Close();

                JavaScriptSerializer ser = new JavaScriptSerializer();
                String jsonStr = ser.Serialize(eventList);
                context.Response.Write(jsonStr);
            }

                
            
        }

        public class LatLng
        {
            public string Latitude
            {
                get;
                set;
            }
            public string Longtitude
            {
                get;
                set;
            }
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