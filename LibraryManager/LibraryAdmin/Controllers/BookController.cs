using BusinessLogic.Models;
using StructureMap;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryAdmin.Controllers
{
    public class BookController : Controller
    {
        // GET: Book
        public ActionResult Index()
        {
            BookModelBuilder builder = ObjectFactory.GetInstance<BookModelBuilder>();
            var books = builder.Build();
            return View(books);
        }
    }
}