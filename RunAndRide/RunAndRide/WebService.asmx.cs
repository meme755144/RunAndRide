using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Script.Services;


namespace RunAndRide
{
    public class Students
    {
        public int StudentId
        {
            get;
            set;
        }
        public string Name
        {
            get;
            set;
        }
        public int Marks
        {
            get;
            set;
        }
    }

    public class GPSHistory
    {
        public int Id
        {
            get;
            set;
        }
        public string StartTime
        {
            get;
            set;
        }
        public string EndTime
        {
            get;
            set;
        }
        public List<LatLng> lkk
        {
            get;
            set;
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

    /// <summary>
    ///WebService 的摘要描述
    /// </summary>
    [WebService(Namespace = "http://iii.panspace.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void GetStudents()
        {
            Students[] objstudents = new Students[]
            {
                new Students()
                {
                        StudentId = 1,
                            Name = "NitinTyagi",
                            Marks = 400
                    },
                    new Students()
                    {
                        StudentId = 2,
                            Name = "AshishTripathi",
                            Marks = 500
                    }
            };
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(objstudents));
        }

        public void GetGPSHistory()
        {
            GPSHistory[] gpsHistory = new GPSHistory[]
            {
                new GPSHistory()
                {
                    Id = 0x00001,
                    StartTime = "20170609121110",
                    EndTime = "20170609121205",
                    //LatLng = new Dictionary<String, String>[]()
                },

            };
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(gpsHistory));
        }
    }
}
