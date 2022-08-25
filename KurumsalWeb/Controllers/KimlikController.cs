using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
   
    public class KimlikController : Controller
    {
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        // GET: Kimlik
        public ActionResult Index()
        {
            return View(db.Kimlik.ToList());
        }

        // GET: Kimlik/Edit/5
        public ActionResult Edit(int id)
        {
            var kimlik = db.Kimlik.Where(x => x.KimlikID == id).SingleOrDefault();
            return View(kimlik);
        }

        // POST: Kimlik/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(int id, Kimlik kimlik,HttpPostedFileBase LogoUrl)
        {
            if (ModelState.IsValid)
            {
                var k = db.Kimlik.Where(x => x.KimlikID == id).SingleOrDefault();
                if (LogoUrl !=null)
                {
                    if (System.IO.File.Exists(Server.MapPath(k.LogoUrl)))
                    {
                        System.IO.File.Delete(Server.MapPath(k.LogoUrl));
                    }
                    WebImage img = new WebImage(LogoUrl.InputStream);
                    FileInfo imgInfo = new FileInfo(LogoUrl.FileName);

                    string logoName =LogoUrl.FileName + imgInfo.Extension;
                    img.Resize(100, 100);
                    img.Save("~/Uploads/Kimlik/" + logoName);
                    k.LogoUrl = "/Uploads/Kimlik/" + logoName;
                }
                k.Title = kimlik.Title;
                k.Keywords = kimlik.Keywords;
                k.Description = kimlik.Description;
                k.Unvan = kimlik.Unvan;
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View(kimlik);
        }


    }
}
