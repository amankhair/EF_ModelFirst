//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityFrameworkDz03ModelFirst.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Student
    {
        public int StudentId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public int Stipend { get; set; }
        public int Kurs { get; set; }
        public string City { get; set; }
        public System.DateTime BirthDay { get; set; }
        public int UniversityId { get; set; }
        public int UniversityUniversityId { get; set; }
    
        public virtual University University { get; set; }
    }
}