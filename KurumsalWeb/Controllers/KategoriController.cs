using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class KategoriController : Controller
    {
        // GET: Kategori
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()
        {
            return View(db.Kategori.ToList());
        }
        [HttpGet]
        public ActionResult YeniKategori()
        {
            return View();
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult YeniKategori(Kategori k)
        {
            if (ModelState!=null)
            {
                db.Kategori.Add(k);
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View();
        }

        public ActionResult KategoriSil(int id)
        {
            if (ModelState != null)
            {
                if (id!=null)
                {
                    var kategoriSil = db.Kategori.Find(id);
                    db.Kategori.Remove(kategoriSil);
                    db.SaveChanges();
                    return RedirectToAction("/Index");
                }
                return HttpNotFound();
            }
            return View();
        }

        public ActionResult KategoriEdit(int id)
        {
            var kategoriGetir = db.Kategori.Find(id);
            return View("KategoriEdit", kategoriGetir);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult KategoriEdit(int id,Kategori kategori)
        {
            if (ModelState.IsValid)
            {
                var k = db.Kategori.Where(x => x.KategoriID == id).SingleOrDefault();
                k.KategoriAd = kategori.KategoriAd;
                k.KategoriAciklama = kategori.KategoriAciklama;
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View();
          
        }
    }
}