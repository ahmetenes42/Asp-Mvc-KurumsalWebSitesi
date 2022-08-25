using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class IletisimController : Controller
    {
        // GET: Iletisim
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Guncelle(int id)
        {
            var g = db.Iletisim.Where(x => x.IletisimID == id).FirstOrDefault();
            return View(g);
       
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Guncelle(int id, Iletisim g)
        {
            if (ModelState.IsValid)
            {
                var Iletisim = db.Iletisim.Where(x => x.IletisimID == id).SingleOrDefault();
                Iletisim.Adres = g.Adres;
                Iletisim.Tel = g.Tel;
                Iletisim.Fax = g.Fax;
                Iletisim.Whatsapp = g.Whatsapp;
                Iletisim.Facebook = g.Facebook;
                Iletisim.Twitter = g.Twitter;
                Iletisim.Instagram = g.Instagram;
                db.SaveChanges();
                return View();
            }
            return View(g);
        }
    }


}