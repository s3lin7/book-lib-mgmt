﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer.EntityModels
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LibraryContainer : DbContext
    {
        public LibraryContainer()
            : base("name=LibraryContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<Book_Author> Books_Authors { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<Book_Borrowed> Books_Borrowed { get; set; }
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<MembershipPlan> MembershipPlans { get; set; }
        public virtual DbSet<Member_MembershipPlan> Members_MembershipPlans { get; set; }
    }
}
