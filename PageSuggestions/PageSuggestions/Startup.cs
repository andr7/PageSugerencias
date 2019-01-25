using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PageSuggestions.Startup))]
namespace PageSuggestions
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
