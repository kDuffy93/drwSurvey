
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
    
public partial class Picture
{

    public int ID { get; set; }

    public System.DateTime date { get; set; }

    public Nullable<int> heading_ID { get; set; }

    public Nullable<int> equipment_ID { get; set; }

    public string name { get; set; }

    public Nullable<int> question_ID { get; set; }

    public byte[] photo { get; set; }

    public string URL { get; set; }

}

}
