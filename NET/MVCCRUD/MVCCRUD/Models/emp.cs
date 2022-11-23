using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MVCCRUD.abcModels
{
    public class emp
    {
        public int id_PK { get; set; }
        public int employeeID { get; set; }
        [Required]
        public string name { get; set; }
        public string city { get; set; }
        public System.DateTime birthDate { get; set; }
    }
}