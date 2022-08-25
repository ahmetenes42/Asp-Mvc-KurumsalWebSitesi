using KurumsalWeb.Models.Entity;
using System;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class HizmetController : Controller
    {
        // GET: Hizmet
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()
        {
            return View(db.Hizmet.ToList());
        }
        [HttpGet]
        public ActionResult YeniHizmet()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult YeniHizmet(Hizmet h , HttpPostedFileBase ResimUrl)
        {
            if (ModelState.IsValid)
            {
                if (ResimUrl!=null)
                {
                    WebImage img = new WebImage(ResimUrl.InputStream);
                    FileInfo imgInfo = new FileInfo(ResimUrl.FileName);

                    string logoName = Guid.NewGuid().ToString() + imgInfo.Extension;
           
                    img.Save("~/Uploads/Hizmet/" + logoName);
                    h.ResimUrl = "/Uploads/Hizmet/" + logoName;
                }
                db.Hizmet.Add(h);
                db.SaveChanges();
                return RedirectToAction("/Index");
              
            }
            return View(h);
        }

        public ActionResult HizmetSil(int id)
        {
            var hizmetSil = db.Hizmet.Where(x => x.HizmetID == id).FirstOrDefault();
            db.Hizmet.Remove(hizmetSil);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }

        public ActionResult HizmetEdit(int id)
        {
            var hizmetGetir = db.Hizmet.Find(id);
            return View("HizmetEdit", hizmetGetir);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult HizmetEdit(int? id, Hizmet hizmet,HttpPostedFileBase ResimUrl)
        {
            if (ModelState.IsValid)
            {
                var h = db.Hizmet.Where(x => x.HizmetID == id).SingleOrDefault();
                if (ResimUrl!=null)
                {
                    if (System.IO.File.Exists(Server.MapPath(h.ResimUrl)))
                    {
                        System.IO.File.Delete(Server.MapPath(h.ResimUrl));
                    }
                    WebImage img = new WebImage(ResimUrl.InputStream);
                    FileInfo imgInfo = new FileInfo(ResimUrl.FileName);

                    string HizmetImage = Guid.NewGuid().ToString() + imgInfo.Extension;
           
                    img.Save("~/Uploads/Hizmet/" + HizmetImage);
                    h.ResimUrl = "/Uploads/Hizmet/" + HizmetImage;
                }
                h.Baslik = hizmet.Baslik;
                h.Aciklama = hizmet.Aciklama;
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View();
        }
    }
}