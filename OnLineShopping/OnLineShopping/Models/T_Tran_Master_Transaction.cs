//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class T_Tran_Master_Transaction
    {
        public T_Tran_Master_Transaction()
        {
            this.T_Tran_Detail_Transaction = new HashSet<T_Tran_Detail_Transaction>();
        }
    
        public int TransactionId { get; set; }
        public string CustomerName { get; set; }
        public string VoucherNo { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public decimal GrossAmount { get; set; }
        public int UserId { get; set; }
    
        public virtual ICollection<T_Tran_Detail_Transaction> T_Tran_Detail_Transaction { get; set; }
    }
}
