
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace Lefarge_FE_App.Models
{

using System;
    using System.Collections.Generic;
    
public partial class Question
{

    public int Question_ID { get; set; }

    public string Question1 { get; set; }

    public int Category_ID { get; set; }

    public string Headings_Under { get; set; }



    public virtual Category Category { get; set; }

}

}
