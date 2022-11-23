using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCCRUD.Models;
namespace MVCCRUD.Controllers
{
    public class EmployeeController : Controller
    {
        DBEmployeeEntities context = new DBEmployeeEntities();
        public ActionResult GetAllEmployees()
        {
            List<TBLEmployee> employees = context.TBLEmployees.Where(a => a.city == "Nadiad").ToList();
            return View("EmployeeList",employees);
        }

        public ActionResult Insert(int id)
        {
            return View();
        }

        public ActionResult InsertEmployee(MVCCRUD.abcModels.emp e)
        {
            if (ModelState.IsValid)
            {
                //context.TBLEmployees.Add(e);
                //context.SaveChanges();
            }
            return RedirectToAction("GetAllEmployees");
        }
    }
}