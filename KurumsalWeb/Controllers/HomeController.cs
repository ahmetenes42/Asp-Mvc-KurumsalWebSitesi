using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace KurumsalWeb.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()

        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            var deger = db.Slider.OrderByDescending(x => x.SliderID).ToList();
            return View(deger);
        }

        

        public ActionResult ServisPartial()
        {
            var deger = db.Hizmet.OrderByDescending(x => x.HizmetID).Take(4).ToList();
            return View(deger);
        }

        public ActionResult HizmetlerimizPartial()
        {
            var deger = db.Hizmet.OrderByDescending(x => x.HizmetID).ToList();
            return View(deger);
        }

        public ActionResult HakkimizdaPartial()
        {
            var deger = db.Hakkimizda.ToList();
            return View(deger);
        }

        public ActionResult Hakkimizda()
        {

            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            var deger = db.Hakkimizda.ToList();
            return View(deger);
        }

        public ActionResult Hizmetlerimiz()
        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            var deger = db.Hizmet.ToList();
            return View(deger);
        }

        public ActionResult Iletisim()
        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            return View();
        }

        [HttpPost]
        public ActionResult Iletisim(string name=null,string email=null,string konu=null,string mesaj=null)
        {
            if (name!=null && email!=null)
            {
                WebMail.SmtpServer = "smtp.gmail.com";
                WebMail.EnableSsl = true;
                WebMail.UserName = "kurumsalWeb01@gmail.com";
                WebMail.Password = "Kurumsal36987";
                WebMail.SmtpPort = 587;
                WebMail.Send("kurumsalWeb01@gmail.com", konu, email , mesaj);
                ViewBag.Mesaj = "Mesajınız başarılı bir şekilde gönderilmiştir";
            }
            else
            {
                ViewBag.Mesaj = "Mesajınız Gönderilirken hata oluştu";

            }
            return View();
        }
        public ActionResult Blog(int sayfa=1)
        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            var blog = db.Blog.OrderByDescending(x => x.BlogID).ToPagedList(sayfa,4);
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            return View(blog);
        }

        public ActionResult BlogKategori(int id,int sayfa = 1)
        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            var v = db.Blog.OrderByDescending(x=>x.BlogID).Where(x => x.Kategori.KategoriID == id).ToPagedList(sayfa, 4);
            return View(v);
        }

        public ActionResult BlogDetay(int id)
        {
            ViewBag.Kimlik = db.Kimlik.SingleOrDefault();
            var blog = db.Blog.Where(x => x.BlogID == id).SingleOrDefault();
            ViewBag.Iletisim = db.Iletisim.SingleOrDefault();
            ViewBag.id = id;
            return View(blog);
        }

        public ActionResult BlogKategoriPartial()
        {
            return PartialView(db.Kategori.ToList().OrderBy(x => x.KategoriAd));
        }

        public ActionResult RecentBlog()
        {
            return PartialView(db.Blog.OrderByDescending(x=>x.BlogID).Take(4).ToList());
        }

        [HttpPost]
        public JsonResult YorumYap(string adsoyad,string email,string mesaj,int BlogID)
        {
            if (mesaj==null)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            db.Yorum.Add(new Yorum { AdSoyad = adsoyad, Eposta = email, Icerik = mesaj, BlogID = BlogID, Onay = false });
           
            var durum= db.SaveChanges();

            if (durum > 0)
            {
              
                return Json("1");
            }
            return Json("0");
          
        }
    }
}