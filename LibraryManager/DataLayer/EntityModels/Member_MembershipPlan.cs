//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Member_MembershipPlan
    {
        public int MemberId { get; set; }
        public int MembershipPlanId { get; set; }
    
        public virtual Member Member { get; set; }
        public virtual MembershipPlan MembershipPlan { get; set; }
    }
}
