﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EntityTest.Startup))]
namespace EntityTest
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
