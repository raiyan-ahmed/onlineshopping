﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnLineShopping.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class OnLineShoppingEntities : DbContext
    {
        public OnLineShoppingEntities()
            : base("name=OnLineShoppingEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<T_Sys_Item_Info> T_Sys_Item_Info { get; set; }
        public DbSet<T_Sys_Registration_Info> T_Sys_Registration_Info { get; set; }
        public DbSet<T_Sys_Unit_Info> T_Sys_Unit_Info { get; set; }
        public DbSet<T_Tran_Detail_Transaction> T_Tran_Detail_Transaction { get; set; }
        public DbSet<T_Tran_Master_Transaction> T_Tran_Master_Transaction { get; set; }
    }
}
