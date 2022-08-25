using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class SliderController : Controller
    {
        // GET: Slider
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()
        {
            return View(db.Slider.ToList());
        }
        public ActionResult YeniSlider()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult YeniSlider(Slider s)
        {
            db.Slider.Add(s);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }

        public ActionResult SliderSil(int id)
        {
            var sil = db.Slider.Where(x => x.SliderID == id).SingleOrDefault();
            db.Slider.Remove(sil);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }

        public ActionResult SliderGuncelle(int id)
        {
            var sg = db.Slider.Find(id);
            return View("SliderGuncelle", sg);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult SliderGuncelle(int id,Slider slider)
        {
            var sg = db.Slider.Where(x => x.SliderID == id).SingleOrDefault();
            sg.SliderBaslik = slider.SliderBaslik;
            sg.SliderAciklama = slider.SliderAciklama;
            db.SaveChanges();
            return RedirectToAction("/Index");
        }
    }
}