using DataLayer.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Models
{
    public class BookModelBuilder
    {
        private IBookRepository bookRepository;

        public BookModelBuilder(IBookRepository repository)
        {
            bookRepository = repository;
        }

        public List<BookModel> Build()
        {
            var bookModels = new List<BookModel>();

            return bookModels;
        }
    }
}
