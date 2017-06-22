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
    /// MissionHandler 的摘要描述
    /// </summary>
    public class MissionHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
            con.Open();
            string strSQL = "select * from tMission";
            SqlCommand cmd = new SqlCommand(strSQL, con);

            SqlDataReader reader = cmd.ExecuteReader();

            ArrayList eventList = new ArrayList();
            int i = 0;
            while (reader.Read() && i < 100)
            {
                Hashtable ht = new Hashtable();
                ht.Add("mId", string.Format("{0}", reader["mId"]));
                ht.Add("mType", string.Format("{0}", reader["mType"]));
                ht.Add("mDistance", string.Format("{0}", reader["mDistance"]));
                ht.Add("mSpeed", string.Format("{0}", reader["mSpeed"]));
                ht.Add("mReward", string.Format("{0}", reader["mReward"]));
                ht.Add("mDescrip", string.Format("{0}", reader["mDescrip"]));

                eventList.Add(ht);
                i += 1;
            }

            reader.Close();
            con.Close();

            JavaScriptSerializer ser = new JavaScriptSerializer();
            String jsonStr = ser.Serialize(eventList);
            context.Response.Write(jsonStr);
        }

        public class Mission
        {
            public string mId { get; set; }
            public string mType { get; set; }
            public string mDistance { get; set; }
            public string mSpeed { get; set; }
            public string mReward { get; set; }
            public string mDescrip { get; set; }
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