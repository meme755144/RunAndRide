using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace RunAndRide.Service
{
    /// <summary>
    /// TestHandler 的摘要描述
    /// </summary>
    public class TestHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");

            //Students[] objstudents = new Students[]
            //{
            //    new Students()
            //    {
            //            StudentId = 1,
            //                Name = "NitinTyagi",
            //                Marks = 400
            //        },
            //        new Students()
            //        {
            //            StudentId = 2,
            //                Name = "AshishTripathi",
            //                Marks = 500
            //        }
            //};

            GPSHistory[] objGPSHistory = new GPSHistory[]
            {
                new GPSHistory()
                {
                    Id = 1,
                    StartTime = "2017010101",
                    EndTime = "2017010505",
                    lkk = new List<LatLng>()
                    {
                        new LatLng()
                        {
                            Latitude = "000",
                            Longtitude = "111"
                        },
                        new LatLng()
                        {
                            Latitude = "222",
                            Longtitude = "333"
                        }
                    }
                }
            };

            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.ContentType = "text/json";
            context.Response.Write(js.Serialize(objGPSHistory));
        }

        public bool IsReusable
        {
            get
            {
                return true;
            }
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
}