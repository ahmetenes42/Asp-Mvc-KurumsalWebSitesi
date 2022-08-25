using KurumsalWeb.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace KurumsalWeb.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        KurumsalWebDbEntities db = new KurumsalWebDbEntities();
        public ActionResult Index()
        {
            ViewBag.Yorum = db.Yorum.Where(x => x.Onay == false).Count();
            ViewBag.BlogSayisi = db.Blog.Count();
            ViewBag.KategoriSayisi = db.Kategori.Count();
            ViewBag.AdminSayisi = db.Admin.Count();

            return View();
        }

        public PartialViewResult yorumPartial()
        {
            var bekleyen = db.Yorum.Where(x => x.Onay == false).ToList();
            return PartialView(bekleyen);
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Admin admin)
        {
            var login = db.Admin.Where(x => x.Eposta == admin.Eposta).SingleOrDefault();
            if (login.Eposta==admin.Eposta && login.Sifre==Crypto.Hash(admin.Sifre,"MD5"))
            {
                Session["adminid"] = login.AdminID;
                Session["eposta"] = login.Eposta;
                Session["yetki"] = login.Yetki;
                return RedirectToAction("/Index", "Admin");

            }
            else
            {
                ViewBag.Uyari = "Kullanıcı adınız veya şifreniz yanlış";
                return View(admin);
            }
            
        }

        public ActionResult LogOut()
        {
            Session["adminid"] = null;
            Session["eposta"] = null;
            Session.Abandon();
            return RedirectToAction("/Login", "Admin");
        }
        public ActionResult SifremiUnuttum()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SifremiUnuttum(string eposta)
        {
            var mail = db.Admin.Where(x => x.Eposta == eposta).SingleOrDefault();
            if (mail!=null)
            {
                Random rnd = new Random();
                int yeniSifre = rnd.Next();

                Admin admin = new Admin();
                mail.Sifre = Crypto.Hash(Convert.ToString(yeniSifre), "MD5");
                db.SaveChanges();

                SmtpClient server = new SmtpClient("smtp.office365.com", 587);
                MailAddress from = new MailAddress("sisya.kurumsalweb@outlook.com");
                MailAddress to = new MailAddress(eposta);// userin mailini yazdık
                MailMessage msg = new MailMessage(from, to);
                msg.IsBodyHtml = true;
                msg.Subject = "Şifre Degiştirme İsteği Bildirimi";
                msg.Body += "<table style='background-color:#fff;padding:10px;width:620px;text-align:left;border-top:10px solid #333333;" +
                    "border-bottom:10px solid #333333;border-left:10px solid #333333;border-right:10px solid #333333'" +
                    " width='630' cellspacing='0' cellpadding='0'><tbody>" +
                    "<tr><td>" +
                    "<table style='background-color:#ffffff;' width='100%' cellspacing='0' cellpadding = '0'>  <tbody><tr><td style = 'padding: 10px;'>" +
                    "<a href = 'https://sisya.com.tr/' target = '_blank'  > " +
                    "<img src = '~/Content/Site/assets/img/sisya_logo-2.png' alt = '' width = '215' height = '55' border = '0' /></a></td>" +
                    "<td style = 'color: #1a2640; font-family: Arial; font-size: 13px;margin-left:50px;' align = 'right' > (0553) 459 54 05 " +
                    "<span style = 'color: #a5b9c5; font-size: 24px;' >|</span> " +
                    "<a style = 'text-decoration: none; color: #1a2640;' href = 'https://sisya.com.tr/' target = '_blank' data - saferedirecturl = '#'>" +
                    "www.sisya.com.tr </a> &nbsp; &nbsp; &nbsp;</td></tr>" +
                    "<tr><td colspan = '2' ><hr style='border: 1px dashed black;'/> </td></tr><tr><td style = 'padding: 10px; font-size: 12px; font-family: Arial;' colspan = '2' >" +
                    "<p style = 'margin: 0 0 10px 0;' > Gönderen: <strong>" + from + "</strong></p>" +
                    "<p style = 'margin: 0 0 10px 0;' > Alıcı : <strong>" +eposta + "</strong></p>" +
                    "<p style = 'margin: 0 0 10px 0;' > Konu: <strong> Şifremi Unuttum </strong></p>" +
                    "<p style = 'margin: 0 0 10px 0;' > Şifreniz: <strong>" + yeniSifre + "</strong></p> <br /> <br />" +
                    "<p style = 'margin: 0 0 0 0;' >" +
                    "Her türlü sorunuzda bize " +
                    "<a style = 'color: #000000;' href = 'mailto:'" + from + "target = '_blank'> " +from + " </a> " +
                    "adresinden ulaşabilir veya " +
                    "<a href = 'tel:(542) 245 71 68' target = '_blank' > (0553) 459 54 05 </a> nolu telefondan IK Birimi ile görüşebilirsiniz.</p>" +
                    "<p style = 'margin: 20px 0 0 0;' > Saygılarımızla,</p><p style = 'margin: 5px 0 0 0;' > " +
                    "Sisya Teknoloji | Yazılım Evi</p></td></tr>" +
                    "<tr><td colspan = '2' ><hr style='border: 1px dashed black;'/></td></tr><tr><td style = 'padding: 10px; color: #808080; font-size: 12px;' colspan = '2'>" +
                    "<p style = 'margin: 0 0 0 0; font-family: Arial;' >" +
                    " Copyright &copy;"+ DateTime.Now.Year + " Sisya Teknoloji | Tüm hakları saklıdır.</p></td></tr></tbody></table></td></tr></tbody></table> ";
                NetworkCredential info = new NetworkCredential("sisya.kurumsalweb@outlook.com", "konya1907");
                server.Credentials = info;
                server.EnableSsl = true;

                server.Send(msg); ///gönderme kodu



                //WebMail.SmtpServer = "smtp.gmail.com";
                //WebMail.EnableSsl = true;
                //WebMail.UserName = "sylmz7507@gmail.com";
                //WebMail.Password = "Ahmet6970";
                //WebMail.SmtpPort = 587;
                //WebMail.Send(eposta, "Admin paneli giriş şifreniz", "Şifreniz : "+ yeniSifre);
                ViewBag.Mesaj = "Mesajınız başarılı bir şekilde gönderilmiştir";
            }
            else
            {
                ViewBag.Mesaj = "Böyle bir mail adresi kayıtlı değil !!";
            }
            return View();
        }
        public ActionResult AdminPro()
        {
            return View(db.Admin.ToList());
        }

        public ActionResult YeniAdmin()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult YeniAdmin(Admin admin,string sifre,string eposta)
        {
            if (ModelState.IsValid)
            {
                admin.Sifre = Crypto.Hash(sifre, "MD5");
                db.Admin.Add(admin);
                db.SaveChanges();
                return RedirectToAction("/AdminPro");
            }
            return View();
            
        }

        public ActionResult AdminGuncelle(int id)
        {
            var a = db.Admin.Where(x => x.AdminID == id).SingleOrDefault();
            return View(a);
        }

        [HttpPost]
        public ActionResult AdminGuncelle(int id,Admin admin)
        {
            if (ModelState.IsValid)
            {
                var a = db.Admin.Where(x => x.AdminID == id).SingleOrDefault();
                a.Sifre = Crypto.Hash(admin.Sifre, "MD5");
                a.Eposta = admin.Eposta;
                a.Yetki = admin.Yetki;
                db.SaveChanges();
                return RedirectToAction("/AdminPro");
            }
            return View(admin);

        }
    }
}