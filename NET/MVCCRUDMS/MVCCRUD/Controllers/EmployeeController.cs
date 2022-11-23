using MVCCRUD.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;

namespace MVCCRUD.Controllers
{
    public class EmployeeController : Controller
    {
        DBEmployeeEntities context = new DBEmployeeEntities();

        public ActionResult GetAllEmployees()
        {
            List<TBLEmployee> employees = context.TBLEmployees.ToList();
            return View(employees);
        }
        
        public ActionResult Insert()
        {
            return View();
        }

        public ActionResult InsertEmployee(TBLEmployee e)
        {
            context.TBLEmployees.Add(e);
            context.SaveChanges();
            return RedirectToAction("GetAllEmployees");
        }

        public ActionResult Update(int id)
        {
            TBLEmployee e = context.TBLEmployees.Find(id);
            return View("Update",e);
        }

        public ActionResult UpdateEmployee(TBLEmployee newEmployee)
        {
            TBLEmployee old = context.TBLEmployees.Find(newEmployee.Id_PK);
            old.EmployeeID = newEmployee.EmployeeID;
            old.Name = newEmployee.Name;
            old.City = newEmployee.City;
            old.BirthDate = newEmployee.BirthDate;
            context.SaveChanges();
            return RedirectToAction("GetAllEmployees");

        }

        public ActionResult Delete(int id)
        {
            TBLEmployee e = context.TBLEmployees.Find(id);
            context.TBLEmployees.Remove(e);
            context.SaveChanges();

            return RedirectToAction("GetAllEmployees");
        }

    }
}