using DataLayer.Interfaces;
using DataLayer.Repositories;
//using LibraryAdmin.Application.DependencyManagement;
using StructureMap;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace LibraryAdmin
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            //IContainer container = new Container(x =>
            //{
            //    x.For<IBookRepository>().Use<BookRepository>();
            //});

            //DependencyResolver.SetResolver(new StructureMapDependencyResolver(container));
        }
    }
}
