using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class BlogYorumController : Controller
    {
        // GET: BlogYorum
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()
        {
            ViewBag.Yorum = db.Yorum.Where(x => x.Onay == false).Count();
            return View(db.Yorum.OrderByDescending(x=>x.YorumID).ToList());
        }

        public ActionResult YorumEdit(int id)
        {
            ViewBag.Yorum = db.Yorum.Where(x => x.Onay == false).Count();
            var yorumGetir = db.Yorum.Where(x => x.YorumID == id).SingleOrDefault();
            return View("YorumEdit", yorumGetir);
           
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult YorumEdit(int id , Yorum yorum)
        {
            if (ModelState.IsValid)
            {
                var y = db.Yorum.Where(x => x.YorumID == id).SingleOrDefault();
                y.Icerik = yorum.Icerik;
                y.Onay = yorum.Onay;
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View();

        }

        public ActionResult YorumSil(int id)
        {
            var sil = db.Yorum.Find(id);
            db.Yorum.Remove(sil);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }
    }
}