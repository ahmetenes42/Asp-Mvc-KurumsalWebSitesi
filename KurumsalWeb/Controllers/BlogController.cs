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
    public class BlogController : Controller
    {
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        // GET: Blog
        public ActionResult Index()
        {
            return View(db.Blog.ToList());
        }

        public ActionResult YeniBlog()
        {
            ViewBag.kategoriID = new SelectList(db.Kategori,"KategoriID", "KategoriAd");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult YeniBlog(Blog blog , HttpPostedFileBase ResimUrl)
        {    
            if (ResimUrl != null)
            {
              
                WebImage img = new WebImage(ResimUrl.InputStream);
                FileInfo imgInfo = new FileInfo(ResimUrl.FileName);

                string logoName = Guid.NewGuid().ToString() + imgInfo.Extension;
      
                img.Save("~/Uploads/Blog/" + logoName);
                blog.ResimUrl = "/Uploads/Blog/" + logoName;
            }
            db.Blog.Add(blog);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }
        public ActionResult Sil(int id)
        {
            var blogSil = db.Blog.Find(id);
            db.Blog.Remove(blogSil);
            db.SaveChanges();
            return RedirectToAction("/Index");
        }

        public ActionResult BlogEdit(int id)
        {
            var blogGetir = db.Blog.Where(x => x.BlogID == id).SingleOrDefault();
            ViewBag.KategoriID = new SelectList(db.Kategori, "KategoriID", "KategoriAd", blogGetir.KategoriID);
            return View("BlogEdit", blogGetir);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult BlogEdit(int id,Blog blog,HttpPostedFileBase ResimUrl)
        {
            if (ModelState.IsValid)
            {
                var b = db.Blog.Where(x => x.BlogID == id).SingleOrDefault();
                if (ResimUrl != null)
                {
                    if (System.IO.File.Exists(Server.MapPath(b.ResimUrl)))
                    {
                        System.IO.File.Delete(Server.MapPath(b.ResimUrl));
                    }
                    WebImage img = new WebImage(ResimUrl.InputStream);
                    FileInfo imgInfo = new FileInfo(ResimUrl.FileName);

                    string HizmetImage = Guid.NewGuid().ToString() + imgInfo.Extension;

                    img.Save("~/Uploads/Hizmet/" + HizmetImage);
                    b.ResimUrl = "/Uploads/Hizmet/" + HizmetImage;
                }
                b.Baslik = blog.Baslik;
                b.Icerik = blog.Icerik;
                b.KategoriID = blog.KategoriID;
                db.SaveChanges();
                return RedirectToAction("/Index");
            }
            return View();
        }
    }

    
}