using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Models
{
    public class BookModel
    {
        public BookModel()
        {
            //this.Book_Author = new HashSet<Book_Author>();
            //this.Book_Borrowed = new HashSet<Book_Borrowed>();
        }
    
        public int BookId { get; set; }
        public string Name { get; set; }
        public string ISBN { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }
        //public System.DateTime PublicationDate { get; set; }
        //public int NumberOfCopies { get; set; }
    
        //public virtual ICollection<Book_Author> Book_Author { get; set; }
        //public virtual ICollection<Book_Borrowed> Book_Borrowed { get; set; }
    }
}
