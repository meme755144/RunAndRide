using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RunAndRide.Startup))]
namespace RunAndRide
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
