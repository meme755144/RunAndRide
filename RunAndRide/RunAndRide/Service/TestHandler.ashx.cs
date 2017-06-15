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
                    StartTime = "2017111111",
                    EndTime = "2017222222",
                    lkk = new List<LatLng>()
                    {
                        new LatLng()
                        {
                            Latitude = "22.6256097",
                            Longtitude = "120.2939954"
                        },
                        new LatLng()
                        {
                            Latitude = "22.6253423",
                            Longtitude = "120.295594"
                        }
                    }
                },
                new GPSHistory()
                {
                    Id = 2,
                    StartTime = "2017222222",
                    EndTime = "2017333333",
                    lkk = new List<LatLng>()
                    {
                        new LatLng()
                        {
                            Latitude = "22.6256939",
                            Longtitude = "120.2935502"
                        },
                        new LatLng()
                        {
                            Latitude = "22.6262856",
                            Longtitude = "120.2917826"
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