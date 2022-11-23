using CRUD.Models;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace CRUD.Controllers
{
    public class HomeController : Controller
    {
        MyDatabaseEntities db = new MyDatabaseEntities();
        // GET: Home
        public ActionResult Index()
        {
            var data = db.Students.ToList();
            return View(data);
        }

        public ActionResult Insert()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Insert(Student s)
        {
            db.Students.Add(s);
            var data = db.SaveChanges();
            if (data > 0)
            {
                TempData["Message"] = "<script>alert('Inserted')</script>";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "<script>alert('Not Inserted')</script>";
            }
            return View();
        }

        public ActionResult Update(int id)
        {
            var data = db.Students.Where(model => model.Id == id).FirstOrDefault();
            return View(data);
        }

        [HttpPost]
        public ActionResult Update(Student s)
        {
            db.Entry(s).State = EntityState.Modified;
            var data = db.SaveChanges();
            if (data > 0)
            {
                TempData["Message"] = "<script>alert('Updated')</script>";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "<script>alert('Not Updated')</script>";
            }
            return View();
        }

        public ActionResult Delete(int id)
        {
            var data = db.Students.Where(model => model.Id == id).FirstOrDefault();
            return View(data);
        }

        [HttpPost]
        public ActionResult Delete(Student s)
        {
            db.Entry(s).State = EntityState.Deleted;
            var data = db.SaveChanges();
            if (data > 0)
            {
                TempData["Message"] = "<script>alert('Deleted')</script>";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "<script>alert('Not Deleted')</script>";
            }
            return View();
        }
    }
}