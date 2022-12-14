USE [KurumsalWebDb]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Eposta] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Yetki] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](250) NULL,
	[Icerik] [nvarchar](max) NULL,
	[ResimUrl] [nvarchar](250) NULL,
	[KategoriID] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizda]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizda](
	[HakkimizdaID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hakkimizda] PRIMARY KEY CLUSTERED 
(
	[HakkimizdaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hizmet]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmet](
	[HizmetID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[ResimUrl] [nvarchar](500) NULL,
 CONSTRAINT [PK_Hizmet] PRIMARY KEY CLUSTERED 
(
	[HizmetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[IletisimID] [int] IDENTITY(1,1) NOT NULL,
	[Adres] [nvarchar](500) NULL,
	[Tel] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Whatsapp] [nvarchar](50) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Twitter] [nvarchar](100) NULL,
	[Instagram] [nvarchar](100) NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[IletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](50) NULL,
	[KategoriAciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kimlik]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kimlik](
	[KimlikID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Keywords] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[LogoUrl] [nvarchar](250) NULL,
	[Unvan] [nvarchar](100) NULL,
 CONSTRAINT [PK_Kimlik] PRIMARY KEY CLUSTERED 
(
	[KimlikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[SliderBaslik] [nvarchar](50) NULL,
	[SliderAciklama] [nvarchar](250) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 25.08.2022 16:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[YorumID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](100) NULL,
	[Eposta] [nvarchar](50) NULL,
	[Icerik] [nvarchar](250) NULL,
	[BlogID] [int] NULL,
	[Onay] [bit] NOT NULL,
 CONSTRAINT [PK_Yorum] PRIMARY KEY CLUSTERED 
(
	[YorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [Eposta], [Sifre], [Yetki]) VALUES (1, N'admin@gmail.com', N'C4CA4238A0B923820DCC509A6F75849B', N'Admin')
INSERT [dbo].[Admin] ([AdminID], [Eposta], [Sifre], [Yetki]) VALUES (2, N'mehmet@gmail.com', N'5232523AB4DCE3A8CB6191EAD18068F3', N'Editör')
INSERT [dbo].[Admin] ([AdminID], [Eposta], [Sifre], [Yetki]) VALUES (3, N'sylmz7507@gmail.com', N'C4CA4238A0B923820DCC509A6F75849B', N'Admin')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (1, N'Yazılım Nedir', N'<p>Yazılım, temelde bilgisayara nasıl &ccedil;alışacağını s&ouml;yleyen komutlar ve veriler b&uuml;t&uuml;n&uuml;d&uuml;r. Bir bilgisayarın iki ana unsuru olan yazılım ve donanım, fonksiyonel olabilmek i&ccedil;in birbirine bağımlıdır. Bilgisayarın fiziksel par&ccedil;alarından oluşan kısım donanım iken bu par&ccedil;aları yazılım denilen&nbsp;<strong>g&ouml;r&uuml;nmez</strong>&nbsp;kısım işlevsel kılar. Bu işlevselliği, farklı ama&ccedil;lara hizmet etmek &uuml;zere yazılım programlar ve kodlar ortaya &ccedil;ıkarır. Bunun nasıl ger&ccedil;ekleştiğini genel hatlarıyla ş&ouml;yle &ouml;zetleyebiliriz:</p>

<p>Kullanıcı, kullanmakta olduğu uygulama ya da programda yaptığı işlemler ile&nbsp;<strong>işletim sistemine</strong>&nbsp;komutlar g&ouml;nderir. İşletim sistemi de bu komutları donanıma iletir. Donanım bu komutları istenilen sonu&ccedil;ların ortaya &ccedil;ıkması i&ccedil;in işler. Sonrasında işletim sistemi bu yeni verileri, uygulama yazılımına iletir ve h&acirc;lihazırda bu program i&ccedil;inde &ccedil;alışan kullanıcı yaptığı işlemin karşılığını alır. Bu &ouml;zeti yaparken kullandığımız işletim sistemi ve uygulama yazılımı gibi terimler, farklı yazılım t&uuml;rlerini ifade eder. Şimdi bu komutlar ve veriler b&uuml;t&uuml;nlerinin en yaygın kullanılan &ccedil;eşitlerine bakalım.</p>

<h2><strong>Yazılım &Ccedil;eşitleri Nelerdir?</strong></h2>

<p>Yazılımlar, ilk etapta farkına varmasak da g&uuml;ndelik hayatın her yerinde karşımıza &ccedil;ıkar. Eğlence, sanayi, sağlık, eğitim, pazarlama,&nbsp;<a href="https://www.ideasoft.com.tr/kategori/yeni-baslayanlar-icin-e-ticaret/" target="_blank">e-ticaret</a>&nbsp;gibi sayısız alan ve sekt&ouml;rde, g&uuml;n&uuml;m&uuml;zde g&ouml;rmediğimiz kodlarla harekete ge&ccedil;irilen ara&ccedil;lar kullanılmaktadır. Bu geniş kullanım alanı farklı ihtiya&ccedil;lara karşılık veren farklı t&uuml;rlerin ortaya &ccedil;ıkmasına neden olmuştur. Yazılım &ccedil;eşitleri genel itibarı ile d&ouml;rt ana başlıkta toplanabilir.</p>

<h3>Uygulama Yazılımları</h3>

<p>Kullanıcı odaklı geliştirilen yazılımlardır. Belirli bir amacı ger&ccedil;ekleştirmek ya da ihtiyacı karşılamak amacı taşırlar. İnternette gezinmeyi sağlayan web tarayıcılar, resim yapma programları ya da elektronik cihazların eğlence potansiyelini ortaya &ccedil;ıkaran oyunlar bu kategoriye d&acirc;hil edilebilir. Bu yazılımlar, bilgisayar ya da akıllı telefon gibi cihazların temel kullanımın alanlarının genişleyip &ccedil;eşitlendirilmesine olanak sağlar.</p>

<h3>Sistem Yazılımları</h3>

<p>Donanım ile uygulamalar arasındaki bağlantıyı kurarlar. Kendi i&ccedil;inde &uuml;&ccedil; alt kategoriye ayrılır. Bunlardan en bilineni&nbsp;<strong>işletim sistemleridir</strong>. İşletim sistemi, bir cihazdaki t&uuml;m uygulamaların &uuml;zerinde &ccedil;alışır ve onların donanım kaynaklarına ulaşmasını sağlar.&nbsp;<em>Windows, Android, iOS, macOS, Linux</em>&nbsp;en bilinen &ouml;rnekleridir. Bilgisayara bağlanan herhangi bir aygıtın &ccedil;alışmasını sağlayan&nbsp;<strong>s&uuml;r&uuml;c&uuml;ler,&nbsp;</strong>bir diğer sistem yazılımı t&uuml;r&uuml;d&uuml;r. Son t&uuml;r olan&nbsp;<strong>hizmet programları</strong>&nbsp;ise bilgisayarların bakımını yapmayı kolaylaştırarak kullanıcılara disk bi&ccedil;imlendirme, dosya transferi yapma, vir&uuml;s temizleme gibi işlemleri ger&ccedil;ekleştirme imk&acirc;nı verir.</p>

<h3>Bilgisayar Yazılımları</h3>

<p>Programlar ve verilerin de arasında bulunduğu&nbsp;<strong>bilgisayar sistemleri</strong>&nbsp;tarafından işlenen t&uuml;m bilgiler bu başlık altında alınabilir. Daha net dille ifade edecek olursak, bilgisayar donanımın &ccedil;alışmasını ve işlevsel leşmesini sağlayan komutlardan oluşan t&uuml;m programlar bilgisayar yazılımı olarak tanımlanır.</p>

<h3>Elektronik Yazılımlar</h3>

<p>Elektronik bir cihazın &ccedil;alışmasını sağlamak i&ccedil;in geliştiriler. Sanayide kullanılan b&uuml;y&uuml;k makineler daha k&uuml;&ccedil;&uuml;k ev aletlerine kadar bir&ccedil;ok cihaz bu komutlar b&uuml;t&uuml;nleri sayesinde &ccedil;alışır. Bilgisayar yazılımlarından farkı, mutlaka bir elektronik devreye ve yapılacak işe bağlı olarak&nbsp;<strong>mekanik bir tasarıma</strong>&nbsp;ihtiya&ccedil;lar duymalarıdır.</p>

<h2><strong>Yazılım Niye &Ouml;nemlidir?</strong></h2>

<p>Genel &ccedil;er&ccedil;eveden bakınca bug&uuml;n gelinen noktada yazılımın olmadığı bir d&uuml;nya hayal etmek bile m&uuml;mk&uuml;n değildir. Yazılımların olmadığı bir d&uuml;nyada bilgisayar ve telefonlar &ccedil;alışmaz, banka hesaplarına erişilemez, sağlık sistemlerinde ciddi aksamalar olur, borsa faaliyetleri y&uuml;r&uuml;t&uuml;lemez... B&ouml;yle bir durumda kaosun ortaya &ccedil;ıkması an meselesidir Buradan hareketle g&uuml;n&uuml;m&uuml;zde yazılımların ne denli &ouml;nemli olduğunu rahatlıkla g&ouml;rebiliriz.</p>

<p>Daha k&uuml;&ccedil;&uuml;k &ouml;l&ccedil;ekte de bu kod ve komut b&uuml;t&uuml;nleri, hem hayatı hem de ticari faaliyetleri ciddi şekilde kolaylaştırır<strong>. Zamandan ve harcadığınız efordan tasarruf etmemizi sağlar</strong>. Bunun yanında yazılımlar, yoğun rekabet ortamında fark yaratmanızı sağlar. G&uuml;venli ve kolay kullanılan&nbsp;<a href="https://www.ideasoft.com.tr/" target="_blank">e-ticaret yazılımları</a>, ticari faaliyetlerinizde m&uuml;şterilerle buluşmanızı kolaylaştırır. Bu nedenle g&uuml;ndelik hayatta olduğu gibi iş hayatında da doğru programların tercihi son derece &ouml;nemlidir.</p>

<h2><strong>Yazılımda Dikkat Edilmesi Gereken Unsurlar Nelerdir?</strong></h2>

<p>Bir yazılım &ouml;ncelikle,&nbsp;<strong>beklenti ve ihtiya&ccedil;lara</strong>&nbsp;tamemen karşılık vermelidir. Aksi h&acirc;lde farklı programlar kullanmaya ihtiya&ccedil; duyabilirsiniz. Bu da hem maddi k&uuml;lfet getirir hem de işlerinizin pratik şekilde s&uuml;rmesini engeller.</p>

<p>Tercih ettiğiniz program, kolay kullanılabilir olmalıdır.&nbsp;<strong>Kullanıcı dostu bir aray&uuml;ze sahip</strong>, işlemleri en pratik ve kolay şekilde yapmanıza olanak veren programları tercih etmelisiniz.</p>

<p>Yazılımın&nbsp;<strong>g&uuml;ncellenebilir</strong>&nbsp;olması da dikkat edilmesi gereken bir unsurdur. Trendlerin son derece hızlı şekilde değiştiği dijital &ccedil;ağda, kullandığımız her şey g&uuml;ncelliğini yitirme riski ile karşı karşıyadır. Bu nedenle ortaya &ccedil;ıkabilecek gelişmelere kolaylıkla ayak uydurabilecek şekilde geliştirilmiş yazılımları tercih ederek, kısa vadede yeni ihtiya&ccedil;ların ortaya &ccedil;ıkmasını engelleyebilirsiniz.</p>

<h2><strong>Yazılımcı Ne İş Yapar?</strong></h2>

<p>Yazılımcı; mobil cihazlarda, bilgisayarlarda ya da elektronik eşyalarda kullanılmak &uuml;zere yazılım programı tasarlar ve geliştirir. Bunun yanında tamamlanmış programların daha kullanışlı ve sorunsuz h&acirc;le gelmesini sağlamak amacıyla onların gelişmesine yardımcı olur, &ccedil;&ouml;z&uuml;mler &uuml;retir. Bu a&ccedil;ıdan bakıldığında yazılımcılığın, dijital &ccedil;ağın en se&ccedil;kin mesleklerinden biri olduğu s&ouml;ylenebilir. Bu meslekte başarılı olmak i&ccedil;in yazılım terimleri ve&nbsp;<strong>yazılım dili</strong>&nbsp;bilmek elzemdir.</p>

<h2><strong>Yazılım Dili Ne Demektir?</strong></h2>

<p>Programlama dili olarak da bilinen bu kavram, kısaca bilgisayarla iletişim kurmaya yarayan dil olarak tanımlanabilir. Yazılımcı, bu dilleri kullanarak yapılmasını istediği eylemin bilgisayar tarafından algılanmasını sağlar. Programlama dillerinin en ilkel versiyonunun 1833 yılında geliştirilen&nbsp;<em>Analytical Engine</em>&nbsp;olduğu kabul edilir. Tarihsel s&uuml;re&ccedil;te yaklaşık&nbsp;<strong>800 farklı programlama dili</strong>&nbsp;geliştirilmiştir.</p>

<h2><strong>En &Ccedil;ok Kullanılan Yazılım Kodlama Dilleri Nelerdir?</strong></h2>

<p>Teknolojinin gelişmesi ve ihtiya&ccedil;ların farklılaşıp &ccedil;eşitlenmesine bağlı olarak farklı yazılım dilleri ortaya &ccedil;ıkmıştır. Programlama dilleri, donanıma m&uuml;dahale etme miktarına bağlı olarak d&uuml;ş&uuml;k, orta ve y&uuml;ksek seviye şekilde kategorize edilir. Şimdi bu dillerin en sık tercih edilen t&uuml;lerine bakalım.</p>

<h3>C++</h3>

<p>Bjarne Stroustrup tarafından 1979 yılında geliştirilmiş olan programlama dilidir. Orta seviyeli bir dil olmasından dolayı, y&uuml;ksek seviyeli dillerle birlikte kullanılması h&acirc;linde daha iyi performans verdiği s&ouml;ylenebilir.&nbsp;<strong>Hızın &ouml;nemli olduğu</strong>&nbsp;oyun, işletim sistemleri, g&ouml;r&uuml;nt&uuml; işleme ve s&uuml;r&uuml;c&uuml;ler gibi alanlarda tercih edilir.</p>

<h3>Java</h3>

<p>Bu programlama dili a&ccedil;ık kodludur ve nesneye y&ouml;nelik olması ile dikkat &ccedil;eker. Farklı fonksiyonlara g&ouml;re şekillendirilebilir.&nbsp;<strong>&Ouml;ğrenmenin g&ouml;rece kolay olduğu bu dil</strong>, Android işletim sistemi i&ccedil;in geliştirilen oyun ve uygulamalar i&ccedil;in sıklıkla kullanılır. Ek olarak web tabanlı uygulamalar i&ccedil;in de en sık tercih edilen dillerin başında gelir.</p>

<h3>Python</h3>

<p>Basit ve dinamik yapısı ile &ouml;ne &ccedil;ıkan bir programlama dilidir. 1991&rsquo;de Guido Van Rossum tarafından geliştirilmiştir. Neredeyse her alanda kullanılabilen bu dil,&nbsp;<strong>yazılım ve kodlamaya başlamayı d&uuml;ş&uuml;nenler i&ccedil;in de olduk&ccedil;a uygun</strong>&nbsp;bir yapıya sahiptir.</p>

<h3>C#</h3>

<p>Microsoft tarafından geliştirilmiştir.&nbsp;<strong>Kullanılması ve &ouml;ğrenmesi kolay</strong>&nbsp;olan programlama dillerinden biridir. C programlama dili ile C++&rsquo;ın bir araya getirilmesiyle oluşturulmuştur. Oyunların, mobil uygulamalarının, konsol uygulamalarının, web servislerinin ve Windows form uygulamalarının kodlanmasından rahatlıkla kullanılabilir.</p>

<h3>HTML</h3>

<p>İlk kez 1993 yılında kullanılmaya başlanmıştır.&nbsp;<a href="https://www.ideasoft.com.tr/web-site-tasarimlari/" target="_blank">Web site tasarım</a>&nbsp;ve kurulumları i&ccedil;in tercih edilir.&nbsp;<strong>HTML&rsquo;i kendi başına bir programa dili olarak tanımlama yanlış olur</strong>. Bu dili yorumlama yetisine sahip programlar vasıtasıyla &ccedil;alıştırılabilen programların yazılmasına olanak sağlar. CSS ve JavaScript ile birlikte kullanıldığında&nbsp;<a href="https://www.ideasoft.com.tr/html-nedir/" target="_blank">HTML</a>, g&ouml;rsel anlamda g&uuml;&ccedil;l&uuml;,&nbsp;<strong>dinamik</strong>&nbsp;yapıların ortaya &ccedil;ıkmasını sağlar.</p>

<h3>PHP</h3>

<p>Web tabanlı sistemlerin kurulması i&ccedil;in son derece kullanışlıdır. A&ccedil;ık kaynak kodlu ve Linux tabanlı olması ile dikkat &ccedil;eker.&nbsp;<em>Google arama motoru, Facebook ve Twitter</em>&nbsp;gibi &ccedil;ok sık kullanılan dijital mecralar bu dilim kullanılması ile oluşturulabilir.</p>

<h3>ASP</h3>

<p>Web sayfaları oluşturmak &uuml;zere, Microsoft tarafından geliştirilmiştir. Tek başına &ccedil;alışamaz, bir web sunucusuna ihtiya&ccedil; duyar. Bu programlama dili ile bir&nbsp;<a href="https://www.ideasoft.com.tr/e-ticaret-sitesi-kurmak-rehberi/" target="_blank">e-ticaret sitesi</a>&nbsp;oluşturmak olduk&ccedil;a kolaydır.</p>

<h3>SQL</h3>

<p>Verileri tasarlamak ve y&ouml;netmek i&ccedil;in kullanılan bir dildir. HTML gibi&nbsp;<strong>kendi başına kullanılamaz</strong>. Sadece veri tabanları &uuml;zerinde; bilgi ekleme, değiştirme, sorgulama ve &ccedil;ıkartma gibi ama&ccedil;larla kullanılır.</p>

<h3>CSS</h3>

<p><strong>Web sitelerinin g&ouml;rsel olarak şekillendirilmesi&nbsp;</strong>i&ccedil;in olduk&ccedil;a kullanışlı bir programlama dilidir. İnternet sitelerinde bulunan fontlar, renkler, ara başlıklar, g&ouml;rsel efektler gibi unsurları CSS aracılığıyla rahatlıkla kontrol edebilirsiniz.</p>

<h2><strong>E-Ticaret Yazılımları Nedir?</strong></h2>

<p>E-ticaret yazılımları, &uuml;r&uuml;n ya da hizmetlerinizi internet &uuml;zerinden m&uuml;şterilerle buluştuğunuz,&nbsp;<strong>e-ticaret sisteminin kurulmasında kullanacağınız</strong>&nbsp;yazılım &ouml;rnekleri şeklinde tanımlanabilir. Bu programlar aracılığıyla &uuml;r&uuml;nlerinizi satacağınız sitenin kurulumunun yanında envanterinizi g&ouml;zetim altında tutabilir, &ouml;demeleri kabul edip kontrol&uuml;n&uuml; sağlayabilir ve siparişlerinizi y&ouml;netebilirsiniz. Bu temel fonksiyonların dışında e-ticaret yazılımları, tasarımın &ouml;zg&uuml;nleştirilmesi ve SEO &ccedil;alışmaları gibi konularda da size yardımcı olur.</p>

<h2><strong>E-Ticaret Yazılımları Hangi &Ouml;zelliklere Sahip Olmalıdır?</strong></h2>

<p>Bu t&uuml;r programlar, genellikle&nbsp;<strong>t&uuml;m e-ticaret faaliyetlerinizi</strong>&nbsp;bir arada y&uuml;r&uuml;tmenize olanak veren bir aray&uuml;ze sahiptir. Bu aray&uuml;z &uuml;zerinden kontrol edebileceğiniz &ouml;zellikler sayesinde, online mağazanız &uuml;zerinden satış yapmanız olduk&ccedil;a kolaylaşır. Peki iyi bir e-ticaret programında hangi&nbsp;<a href="https://www.ideasoft.com.tr/ozellikler/" target="_blank">&ouml;zellikler</a>&nbsp;mutlaka bulunmalıdır?</p>

<h3>G&uuml;venli &Ouml;deme Se&ccedil;enekleri</h3>

<p>Kullanıcılar, sizin internet sitenizden alışveriş yaparken &ouml;deme bilgilerini kullanırlar. Bu bilgilerin, k&ouml;t&uuml; niyetli kişilerin eline ge&ccedil;mesi sıklıkla karşılaşılabilen bir durumdur. Dolayısıyla&nbsp;<a href="https://www.ideasoft.com.tr/ozellikler/odeme-sistemleri/" target="_blank"><strong>g&uuml;venli &ouml;deme se&ccedil;enekleri</strong></a>&nbsp;i&ccedil;eren bir yazılım kullanarak hem m&uuml;şterilerin sitenize g&uuml;venmelerini sağlarsınız hem de sorunsuz bir alışveriş s&uuml;recinin ardından daha sonraki alışverişlerde de sizi tercih etmeleri konusunda ikna edici olma şansını yakalarsınız.</p>

<h3>Entegrasyon &Ccedil;&ouml;z&uuml;mleri</h3>

<p>İyi bir e-ticaret yazılımı, kargo sistemleri, tedarik&ccedil;i firmalar ve muhasebe uygulamaları ile entegre olarak faaliyetlerinizi &ccedil;ok daha kolay bir şekilde takip etmenizin &ouml;n&uuml;n&uuml; a&ccedil;ar. Bunun yanında pazaryeri olarak tanımlanan ve bir&ccedil;ok e-ticaret firmasını bir araya getiren Amazon, N11, Gittigidiyor, Hepsiburada gibi sitelerle entegre şekilde &ccedil;alışan bir yazılım,&nbsp;<strong>&ccedil;ok daha fazla m&uuml;şteriye ulaşmanızı kolaylaştırır.</strong>&nbsp;Bu nedenle zengin&nbsp;<a href="https://www.ideasoft.com.tr/ozellikler/entegrasyon-cozumleri/" target="_blank">entegrasyon &ccedil;&ouml;z&uuml;mleri</a>&nbsp;sunan bir yazılım tercih ederek bir&ccedil;ok farklı avantajı birlikte elde edebilirsiniz.</p>

<h3>&Uuml;r&uuml;n Y&ouml;netimi</h3>

<p><a href="https://www.ideasoft.com.tr/ozellikler/urun-yonetimi/" target="_blank">&Uuml;r&uuml;n y&ouml;netimi</a>, e-ticarette zaman zaman sorun oluşturabilen bir konudur. &Uuml;r&uuml;nleri; &ouml;zellikleri ya da markalarına g&ouml;re kategorize etmek, doğru g&ouml;rsellerle kullanıcılara sunmak ekstra &ouml;zen gerektirir. Bu konularda kolaylık sağlayan bir program tercih ederek zamandan tasarruf ederken sitenizi&nbsp;<strong>daha profesyonel bir g&ouml;r&uuml;n&uuml;me</strong>&nbsp;kavuşturabiliriz.</p>

<h3>M&uuml;şteri Hizmetleri</h3>

<p>Kullanacağınız yazılımı sağlayan şirketin size g&uuml;&ccedil;l&uuml; bir satış sonrası destek sağlaması olduk&ccedil;a &ouml;nemlidir. B&ouml;ylelikle karşılaşabileceğiniz en ufak sorun dahi en kısa s&uuml;rede &ccedil;&ouml;z&uuml;l&uuml;r ve ticari işlemlerinize problemsiz şekilde devam edebilirsiniz. Bunun yanında&nbsp;<strong>&ccedil;eşitli videolar ve eğitimler</strong>&nbsp;ile size yardımcı olacak bir&nbsp;<a href="https://www.ideasoft.com.tr/ozellikler/destek-ve-musteri-hizmetleri/" target="_blank">m&uuml;şteri hizmetleri</a>&nbsp;ağına sahip bir yazılımı tercih ederek olası sorunları &ccedil;&ouml;zmek konusunda elinizi daha da g&uuml;&ccedil;lendirebilirsiniz.</p>

<h3>Sipariş Y&ouml;netimi</h3>

<p>G&uuml;&ccedil;l&uuml; bir&nbsp;<a href="https://www.ideasoft.com.tr/ozellikler/siparis-yonetimi/" target="_blank">sipariş y&ouml;netimi</a>&nbsp;mod&uuml;l&uuml;ne sahip bir program kullanarak,&nbsp;<strong>siparişlerin takip edilmesi, kargolanması ve raporlanması</strong>&nbsp;konusunda b&uuml;y&uuml;k bir kolaylık elde edebilirsiniz.</p>

<h2><strong>Hazır E-Ticaret Yazılımlarında G&uuml;venlik Nasıl Sağlanır?</strong></h2>

<p>E-ticaret yazılımları, SSL sertifikaları ve 3D Secure gibi &ouml;deme altyapılarını kendi sistemlerine entegre ederek g&uuml;&ccedil;l&uuml; bir g&uuml;venlik imk&acirc;nı sağlar. SSL sertifikaları; 40, 56, 128 ve 256 bit gibi g&ouml;stergelerle seviyelendirilir. Bu sertifikalardaki&nbsp;<strong>bit sayısının artışı, g&uuml;venlik d&uuml;zeyinin de daha y&uuml;ksek olduğunu</strong>&nbsp;işaret eder. Daha y&uuml;ksek bite sahip bir SSL sertifikası sağlayan bir programı tercih ederek sitenizin g&uuml;venliğini artırabilirsiniz.</p>

<p>3D Secure ise<strong>&nbsp;&ccedil;alıntı kredi kartları</strong>&nbsp;ile yapılacak alışverişleri &ouml;nlemek adına &ccedil;ok kullanışlı bir sistemdir. Yazılımlar bu &ouml;zelliği opsiyonel olarak b&uuml;nyelerine katarak hem kullanıcı hem de sitenin sahibi i&ccedil;in g&uuml;venlik d&uuml;zeyini artırırlar. Bu &ouml;zellikleri destekleyen bir yazılım ile her y&ouml;n&uuml;yle daha g&uuml;venli bir e-ticaret deneyimi yaşayabilirsiniz.</p>
', N'/Uploads/Hizmet/cf5da0e5-be50-4d27-9db7-6ce30b3c9080.jpg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (6, N'Algoritma Nedir ?', N'<p>Algoritma, belirli bir problemi &ccedil;&ouml;zmek veya belirli bir amaca ulaşmak i&ccedil;in &ccedil;&ouml;z&uuml;m yolunun adım adım tasarlanmasıdır. Algoritmalar sadece bilgisayar bilimlerinde değil hayatın her alanında kullanılır. &Ouml;rneğin bir yemek yaparken, o yemeğin tarifindeki adımlar aslında bir algoritmadır.</p>

<p>&ldquo;Algoritma nedir?&rdquo; sorusunu cevaplamadan &ouml;nce problemin tanımını yapalım. Karşılaştığımız soruna veya &ccedil;&ouml;z&uuml;lmesi gereken duruma &ldquo;problem&rdquo; denir.</p>

<p>&Ouml;rneğin sınav esnasında kalemimizin ucunun bitmesi, internetten aldığımız ayakkabının k&uuml;&ccedil;&uuml;k gelmesi, okula ge&ccedil; kalmamız gibi durumlar g&uuml;nl&uuml;k hayatta karşılaşabileceğimiz problemlere birer &ouml;rnektir.</p>

<p>Bir problemi tanımlama, nedenini a&ccedil;ıklama, &ccedil;&ouml;z&uuml;m&uuml; i&ccedil;in alternatif yolları belirleme ve bu yollar arasından en uygun olanı uygulama s&uuml;re&ccedil;lerinin tamamı &ldquo;problem &ccedil;&ouml;zme&rdquo; olarak adlandırılır.</p>

<p>Algoritma, bir problemi &ccedil;&ouml;zmek i&ccedil;in gerekli yolun basit, net ve belirli bir sıraya g&ouml;re tasarlanmış h&acirc;lidir.&nbsp;</p>

<p>&Ouml;rneğin a&ccedil;ılmayan bir bilgisayar problemi i&ccedil;in &ccedil;&ouml;z&uuml;m yolu şu sıralamada olmalıdır: &Ouml;ncelikle bilgisayarın fişi takılı mı diye kontrol etmeliyiz. Fişi takılı değil ise fişini takıp a&ccedil;abiliriz. Eğer fişi takılı ise monit&ouml;r&uuml;n a&ccedil;ık olup olmadığını kontrol etmeliyiz. Eğer a&ccedil;ık değilse monit&ouml;r&uuml; a&ccedil;malıyız. Monit&ouml;r de a&ccedil;ık ise bilgisayarı bir tamirciye g&ouml;t&uuml;rmeliyiz.&nbsp;</p>

<p>G&ouml;rd&uuml;ğ&uuml;n&uuml;z gibi işlemler belirli bir sıralamada yapılmıştır.</p>

<p>&nbsp;</p>

<h2><a href="https://bilimgenc.tubitak.gov.tr/file/algoritmanedir8png">algoritma_nedir_8.png</a></h2>

<p>&nbsp;</p>

<p>Akış Diyagramı Nedir?</p>

<p>Akış diyagramı, algoritmaların şekil ve sembollerle ifade edilmesidir. Akış şemasında her adım birbirinden farklı anlamlar taşıyan şekillerden oluşur ve adımlar arasındaki ilişki oklar ile g&ouml;sterilir. Kodlanacak programın akış şemasının oluşturulması, s&uuml;recin daha kolay &ccedil;&ouml;z&uuml;mlenmesine yardımcı olur.</p>

<p>Akış diyagramlarında farklı şekiller kullanılır.</p>

<p>&nbsp;</p>

<h2><a href="https://bilimgenc.tubitak.gov.tr/file/algoritmanedir9png">algoritma_nedir_9.png</a></h2>

<p>&nbsp;</p>

<p>&ldquo;Bug&uuml;n ne yapmak istiyorum?&rdquo; sorusunu akış şemasına &ccedil;evirebiliriz.&nbsp;</p>

<p>Problem: Bug&uuml;n ne yapmak istiyorum?</p>

<p>&ldquo;Dışarı &ccedil;ıkmak istiyor musun?&rdquo; sorusuna &ldquo;Evet&rdquo; cevabını veriyorsanız hava durumu bilgisini alınırsınız. Hava yağmurlu ise botlarınızı giyip, şemsiyenizi alarak dışarı &ccedil;ıkabilirsiniz. Hava yağmurlu değilse spor ayakkabılarınızı giyip dışarı &ccedil;ıkabilirsiniz.&nbsp;</p>

<p>&ldquo;Dışarı &ccedil;ıkmak istiyor musun?&rdquo; sorusuna &ldquo;Hayır&rdquo; cevabını veriyorsanız &ldquo;Kitap okumak istiyor musun?&rdquo; sorusu sorulur. Bu soruya &ldquo;Evet&rdquo; cevabını veriyorsanız sevdiğiniz bir kitabı okumaya başlayabilir, &ldquo;Hayır&rdquo; cevabını veriyorsanız sevdiğiniz bir m&uuml;ziği a&ccedil;ıp dinleyebilirsiniz.</p>

<p>&nbsp;</p>

<h2><a href="https://bilimgenc.tubitak.gov.tr/file/algoritmanedir11png">algoritma_nedir_11.png</a></h2>

<p>&nbsp;</p>

<p>İki sayının toplamını bulmak i&ccedil;in kullanılan akış diyagramı da aşağıdaki gibidir.</p>

<ol>
	<li>Başlama işleminden sonra kullanıcıdan birinci sayıyı girmesi istenir.&nbsp;</li>
	<li>Girilen bu değer A değişkenine aktarılır.&nbsp;</li>
	<li>Ardından ikinci sayıyı girmesi istenir.&nbsp;</li>
	<li>Bu değer de B değişkenine aktarılır.&nbsp;</li>
	<li>A ve B toplanıp sonu&ccedil; değeri bulunur.&nbsp;</li>
	<li>Sonu&ccedil; değeri ekranda yazılır.&nbsp;</li>
	<li>Son olarak da bitirme işlemine gelinir ve akış diyagramı biter.</li>
</ol>

<p>T&uuml;m işlem &ldquo;Başla&rdquo; ve &ldquo;Bitir&rdquo; şekilleri arasında ger&ccedil;ekleşir.</p>

<p>&nbsp;</p>

<h2><a href="https://bilimgenc.tubitak.gov.tr/file/algoritmanedir12png">algoritma_nedir_12.png</a></h2>

<p>&nbsp;</p>

<p>Yaptığımız etkinliklerde bilgisayara ne yapacağını &ldquo;s&ouml;ylemek&rdquo; i&ccedil;in bilgisayar kodlarını kullanıyoruz. Kod yazmadan &ouml;nce ise algoritmayı oluşturmamız gerekiyor. Bu video sayesinde algoritmanın ne olduğunu kolayca &ouml;ğrenebilirsiniz.</p>
', N'/Uploads/Hizmet/4eed0597-b771-4cac-9e7f-92821ccc52ba.jpg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (7, N'Github Nedir?', N'<p>Git&#39;in ne olduğunu bir &ouml;nceki Git Nedir, Nasıl Kullanılır? yazımızda detaylı bir şekilde &ouml;ğrenmiştik.</p>

<p>Github, d&uuml;nyanın en b&uuml;y&uuml;k geliştirici topluluklarından birisi olup, git versiyon kontrol sistemini kullanarak yazılım geliştirme projeleri i&ccedil;in web tabanlı bir bulut depolama servisidir.</p>

<p>Ayrıca, Github yazılım geliştiricileri i&ccedil;in bir sosyal ağ platformudur. Github sayesinde, yazılım geliştiriciler, kendileri gibi yazılımla uğraşan kişilerin projelerine g&ouml;z atabilir onları takip edebilirler.</p>

<h2>Github Neden Kullanılır?</h2>

<p>Neden Github&#39;ı kullanmalısınız? Bunun birka&ccedil; nedeni var. Birinci neden, kolay bir şekilde iş birliği ve s&uuml;r&uuml;m kontrol&uuml; sağlamasıdır. Github herhangi bir yerden herhangi biriyle kod &uuml;zerinde &ccedil;alışmanıza olanak tanır. Ek olarak bir&ccedil;ok şirket ve işveren Github kullanmaktadır. Bu nedenle, bir iş bulmayı planlıyorsanız. Github profiliniz mutlaka olmalıdır.</p>

<h2>Github Nasıl Kullanılır?</h2>

<p>Yeni başlayan birisi i&ccedil;in Github karmaşık gelebilir ancak temel bilgiyi anlamak başlamanıza yardımcı olacaktır. Merak etmeyin size en anlaşılır şekilde ve adım adım Github&#39;ı nasıl kullanacağınızı g&ouml;stereceğim.</p>

<p>1- Github&#39;a kayıt olun.</p>

<p>Github&#39;ı kullanabilmeniz i&ccedil;in bir Github hesabına ihtiyacınız olacak. Buradan &uuml;cretsiz bir şekilde Github hesabınızı oluşturabilir ve Github&#39;ı kullanmaya başlayabilirsiniz. &Uuml;cretsiz olarak oluşturduğunuz hesabınız ile, sınırsız genel ve &ouml;zel repository (depo) sahibi olacaksınız.</p>

<p>2- Git&#39;i bilgisayarınıza y&uuml;kleyin.</p>

<p>Git&#39;in ne olduğuna, nasıl kullanıldığına ve bilgisayarınıza (windows 10) nasıl kuracağınıza dair bilgiler verdiğimiz detaylı git yazımıza buradan tıklayarak ulaşabilirsiniz.</p>

<p>3- Bir depo oluşturun.</p>

<p>Github&#39;ı kullanmaya başladığınızda ilk yapmanız gereken repository (depo) mantığını anlamak ve ilk repository (depo) oluşturmanızdır.</p>

<p>Repository (Depo) Nasıl Oluşturulur?</p>

<p>Github&#39;a hesabınızla giriş yaptıktan sonra aşağıdaki gibi bir ekran olacak. Sağ &uuml;st tarafta profil resminizin solunda bulunan &quot; + &quot; butonuna tıklayıp &quot;New repository&quot; dedikten sonra yeni deponuzu oluşturabilirsiniz.</p>

<p><img src="https://lh5.googleusercontent.com/LSOhWDfju1D-8zfux0ExHz8NagRKfPPs00c56eX53jtn0bYToAXcoaQP0Gy77AMjHzBmZOv6FflAl6y4nxHTM4OyrD0_J7kGT9MxkosDYWVAGm1uSeXz38naugT0-cQct4IRH-x0" style="height:339px; width:602px" /></p>

<h2>Github İ&ccedil;in Bilmeniz Gereken Terimler</h2>

<p>Repository:&nbsp;</p>

<p>Yukarıda da aslında biraz bahsetmiştim. Repository yani depo, github profilinizin altında a&ccedil;acak olduğunuz dosya dizinleri yani depolardır. Kısaca projeleriniz. Bu depolar gizli olabileceği yani sadece siz g&ouml;rebileceğiniz gibi herkese a&ccedil;ık olarak da ayarlayabilirsiniz.</p>

<p>Branch:</p>

<p>Bir kullanıcının &ccedil;alıştığını projenin farklı versiyonlarına erişmesini istiyorsanız Branch oluşturabilirsiniz. Kullanıcı projesine bir yenilik eklemek istediği zaman, yaptığı değişiklik projesinin &ccedil;alışmasını olumsuz etkileyebilir bu olumsuzluktan etkilenmemesi i&ccedil;in branch kullanılır.</p>

<p>Origin:</p>

<p>&Ccedil;alışmanın ana dalı olan Origin (kaynak) olarak ifade edilir. Aktif branch da origin olabilir. İlk oluşturulan Branch ise Master olarak ifade edilir.</p>

<p>Fork:</p>

<p>Başka bir geliştiricinin oluşturduğu projeyi kendi hesabınıza kopyalamanıza Fork adı verilir. Başka bir kullanıcının projesini kendi hesabınıza alıp (Fork) &uuml;zerinde &ccedil;alışarak istediğiniz değişiklikleri yapabilirsiniz.</p>

<p>Clone:</p>

<p>Github &uuml;zerindeki bir projeyi bilgisayarınıza kopyalayıp yani indirmenize yarar.</p>

<p>Commit:</p>

<p>Fork&#39;un ne olduğunu &ouml;ğrendik. Bir proje i&ccedil;in fork yaptınız diyelim yani projeyi kopyaladınız ve &uuml;zerinde değişiklik yapacaksınız projeye ekleyeceğiniz yeni kodları da i&ccedil;eren &ccedil;alışmanın Github&#39;taki kopyasına da iletilmesi i&ccedil;in &ouml;ncelikle &quot;Commit&quot; işlemini yapmanız gerekmektedir. Bu işlemi yapmanız demek &ccedil;alışmanızın Github bulut sistemine g&ouml;nderilmek &uuml;zere paketlenmesi demektir.</p>

<p>Ignore:</p>

<p>Commit işlemini yaparken bazı dosyalarınızın paketlenmesini ve g&ouml;nderilmesini istemiyor olabilirsiniz. Bu istemediğiniz dosyaları, ignore edebilirsiniz. B&ouml;ylece o dosyalar paketlenip g&ouml;nderilmez.</p>

<p>Push:</p>

<p>Commit işlemi ile paketlediğiniz &ccedil;alışmayı Github sunucularına Push edilme işlemi yani g&ouml;nderilmesine denir.</p>

<p>Issues:</p>

<p>Sorunlar olarak T&uuml;rk&ccedil;e&#39;ye &ccedil;evrilen Issues, bir durum veya sorun karşılığında bilgilendirme yapmak i&ccedil;in kullanılmaktadır.</p>

<h2>Profilinizi zenginleştirin, neden?</h2>

<p>Github&#39;da keşfedilecek &ccedil;ok fazla şey vardır. Şimdiye kadar sadece temel bilgileri edinmiş olduk. Github&#39;ın bir s&uuml;r&uuml;m kontrol platformundan &ccedil;ok daha fazlası olduğunu bilmelisiniz. Programcılar i&ccedil;in de aynı zamanda bir t&uuml;r sosyal medya platformu olduğu gibi...</p>

<p>GitHub, yalnızca programlama bilginizi arttırmakla kalmaz, aynı zamanda en iyi &ccedil;alışmalarınızı sergilemek i&ccedil;in harika bir yerdir.</p>

<p>Oluşturmuş olduğunuz Github profili işverenlerin sizi bulması, potansiyel işler ve projeler hakkında size ulaşması i&ccedil;in de harika bir yerdir.</p>

<p>Bir&ccedil;ok geliştirici, ilgi &ccedil;ekici ve faydalı blog yazıları yazarak, podcast&#39;ler veya YouTube gibi yerlerde i&ccedil;erik oluşturarak Github takip&ccedil;ileri kazanmaya &ccedil;alışır. Bunun nedeni, ne kadar &ccedil;ok takip&ccedil;iniz olursa, size o kadar &ccedil;ok fırsat a&ccedil;ılacak ve programlama alanında bir d&uuml;ş&uuml;nce lideri olmak i&ccedil;in o kadar b&uuml;y&uuml;k yeteneğiniz olacak olmasıdır.</p>

<p>&nbsp;</p>

<h2>Github Sizi Nasıl Geliştirebilir?</h2>

<p>Yazılım geliştiricilerin her zaman yeni bir şeyler &ouml;ğrenmesi ve kendisini yenilemesi, geliştirmesi gerekiyor. &Ccedil;&uuml;nk&uuml;, programlama d&uuml;nyası s&uuml;rekli gelişiyor ve her g&uuml;n kodlarla yeni sorunlara &ccedil;&ouml;z&uuml;mler bulunuyor. Eğer siz de yazılım d&uuml;nyasındaysanız g&uuml;&ccedil;l&uuml; kalabilmek i&ccedil;in, s&uuml;rekli olarak sorunları &ccedil;&ouml;zmenin yeni yollarını keşfetmeniz gerekiyor. Yeni şeyler denemeli ve diğer programcılarla iş birliği i&ccedil;erisinde olmalısınız. Github&#39;da sizinle birlikte &ouml;ğrenecek &ccedil;ok fazla insan var. Github&#39;ı keşfetmek i&ccedil;in biraz zaman ayırın ve t&uuml;m potansiyelinizi nasıl ortaya &ccedil;ıkarabileceğinizi, uzman bir programcı olabileceğinizi keşfedin.</p>
', N'/Uploads/Blog/7a3f7100-a811-4233-993b-acbc301d6190.jpg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (8, N'Usta Bir Yazılım Mühendisi Olmak İçin Okuyabileceğiniz 5 Kitap Önerisi', N'<h2>&nbsp;</h2>

<p>Kendini geliştirmek&hellip; Eğer bir yazılımcıysanız veya ciddi bir şekilde yazılım d&uuml;nyasına adım atmayı planlıyorsanız size bu kavramın iyi bir yazılımcı olmak i&ccedil;in &ccedil;ok &ouml;nemli olduğunu s&ouml;yleyebiliriz. Zira her şeyin hızla değiştiği g&uuml;n&uuml;m&uuml;z d&uuml;nyasında, yazılımcılar bu değişime ayak uydurmaya mecbur. Siz de kabul edersiniz ki g&uuml;n&uuml;m&uuml;zde online kaynakların &ccedil;ok sayıda ve kolay erişilebilir olması kendimizi geliştirmeyi bir hayli kolaylaştırıyor.&nbsp;</p>

<p>Bir yazılımcı olarak ufkunuzu geliştirecek veya başka deneyimli yazılımcıların tecr&uuml;belerinden faydalanmanızı sağlayacak 5 kitabı sizlerle birlikte inceleyeceğiz.</p>

<h2>1. Clean Code &ndash; A Handbook of Agile Software Craftsmanship</h2>

<h2><img src="https://coderspace.s3.amazonaws.com/django-summernote/2021-01-24/f556e4df-81e0-492c-8a1f-95662915a1f7.png" /></h2>

<p>&nbsp;</p>

<p>Nedir bu temiz kod dediğinizi duyar gibiyim. Temiz kod sadece yazanın değil okuyan diğer yazılımcıların da anlayabileceği ve geliştirebileceği şekilde yazılmış olan koddur diyerek &ouml;zetleyebiliriz galiba. Yazarımız Robert C. Martin ise bu konuyu bizden daha detaylı ele almış anlaşılan :)</p>

<p>Bu kitap &ccedil;oğu kurumda, okulda veya deneyimli yazılımcılar tarafından şiddetle tavsiye edilir. Kitapta &ouml;ncelikle temiz kodun nasıl yazılacağı hakkında ilkeler, modeller ve uygulamalara yer veriliyor. Sonrasında ise okuyucuyu da olayın i&ccedil;ine dahil ederek ona bolca kod okutuyor ve bu kodlar hakkında interaktif bir şekilde neyin doğru ya da neyin yanlış olduğunu fark etmesini istiyor. B&ouml;ylelikle bir kodu nasıl temiz bir kod haline getirebileceği konusunda biraz d&uuml;ş&uuml;nmesini sağlıyor.</p>

<p>2. Head First Design Patterns: A Brain-Friendly Guide</p>

<p><img src="https://coderspace.s3.amazonaws.com/django-summernote/2021-01-24/1121c83d-51d5-486a-b99d-52a1d107c08f.png" /></p>

<p><br />
&Uuml;niversitede girdiğim ilk programlama dersinde hocam &ldquo;Yazılım bir problem &ccedil;&ouml;zme s&uuml;recidir. Fakat &ccedil;&ouml;z&uuml;m i&ccedil;in her zaman tekerleği baştan icat etmenize gerek yok.&rdquo; demişti. Bu s&ouml;z&uuml;n ağırlığını o an i&ccedil;in anlayamamıştım ama zaman i&ccedil;inde daha net anlayabildim. Yazılım &ccedil;ok geniş bir alan olsa da karşılaşılan problemler sınıflandırılabilir ve bir &ccedil;&ouml;z&uuml;m başka bir probleme uyarlanabilir. Tasarım kalıpları (Design Patterns) ise tam da bu işe yarıyor işte! Yazılım d&uuml;nyasında en &ccedil;ok kullanılan tasarım kalıplarını &ouml;ğrenerek siz de sorunlarınıza daha kolay &ccedil;&ouml;z&uuml;m bulabilirsiniz.</p>

<p><br />
3. Introduction to Algorithms</p>

<p><img src="https://coderspace.s3.amazonaws.com/django-summernote/2021-01-24/f41927f4-bf61-4a1e-9009-6562cc9c80d3.png" /></p>

<p><br />
D&uuml;nya &ccedil;apında &ccedil;oğu &uuml;niversite gibi bizim de ders kitabı olarak kullandığımız bir kitap&hellip; Algoritmalar hakkında okuyabileceğiniz en detaylı kitaplardan bir tanesi. Veri yapıları, dynamic programming, greedy algoritmalar, graph theory ve daha niceleri i&ccedil;in sizi buraya alalım&hellip;</p>

<p>Kelimenin tam anlamıyla yazılımcılar i&ccedil;in başucu kitabı şeklinde &ouml;zetlenebilir.</p>

<p><br />
4. Cracking the Coding Interview</p>

<p><img src="https://coderspace.s3.amazonaws.com/django-summernote/2021-01-24/8d0779a9-366a-41e2-b734-d5726fda2a11.png" /></p>

<p><br />
Madem yazılım problem &ccedil;&ouml;zmek demektir dedik o zaman size bu konuda soru bankası niteliğinde bir kitap &ouml;nerelim... İ&ccedil;indeki 189 algoritma problemiyle ve ipu&ccedil;larıyla kod yazma konusunda haddinden fazla pratik yapmanıza yardımcı olacak. Ayrıca soruları &ccedil;&ouml;zmeniz i&ccedil;in size kanıtlanmış beş stratejik yol da sunuyor bu kitap. Adından da anlaşılabileceği gibi iş m&uuml;lakatlarında bu tarz sorularla karşılaşabileceğinizden bahsetmiyoruz bile...</p>

<p><br />
5.. Refactoring &ndash; Improving The Design Of Existing Code</p>

<p><img src="https://coderspace.s3.amazonaws.com/django-summernote/2021-01-24/9dac7eab-2c55-49ae-8433-4f068f106ee3.png" /></p>

<p><br />
Bu sefer de nedir bu refactoring dediğinizi duyar gibiyim 🙂 Refactoring halihazırda yazılmış bir kodun işlevselliğini değiştirmeden tasarımı değiştirmek olarak a&ccedil;ıklayabiliriz. Peki bu konu neden bu kadar &ouml;nemli?</p>

<p>Hepimiz zaman zaman geri d&ouml;n&uuml;p kodumuzu temize &ccedil;ekeceğimizi s&ouml;ylemişizdir. Ancak o zamanlar LeBlanc&rsquo;ın şu kuralını bilmiyorduk: &ldquo;Sonra asla demektir (Later equals never).&rdquo; Robert C. Martin</p>

<p>Daha &ouml;nce de bahsettiğim gibi yazılımcı olarak hayatınız boyunca bir&ccedil;ok problem &ccedil;&ouml;zeceksiniz fakat işiniz burada bitmeyecek maalesef. Daha sonra bu kodun tasarımını bozmadan &uuml;zerinde iyileştirmeler yapmanız gerekebilir. İşte bu kitap size tam da bu konuda yardımcı olacak! Sadece nasıl refactoring yapacağınız değil, aynı zamanda refactoring gerektiren bir kodu nasıl tanıyacağınız (Bad Smells in Code) &uuml;zerine de şahane bilgiler veriliyor bu kitapta.</p>
', N'/Uploads/Blog/000bb914-4ac8-4111-8e65-1a8f9f4fdef7.jpg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (9, N'Yazılımcılara 5 Ide Tavsiyesi', N'<p><strong>IDE ve Text Editor Farkı Nedir?</strong></p>

<p>A&ccedil;ılımını I<strong>ntegrated Development Environment</strong>&nbsp;olarak yapabileceğimiz&nbsp;<strong>IDE</strong>, text editor&rsquo;lerin kod yazmak i&ccedil;in daha da &ouml;zelleştirilmiş hali olarak d&uuml;ş&uuml;n&uuml;lebilirler. IDE&rsquo;ler text edit&ouml;rlerin sahip olduğu &ouml;zelliklerin yanı sıra kodunuzu y&uuml;r&uuml;tmenizi sağlayabilecek bir<strong>&nbsp;derleyici (compiler)</strong>, hata ayıklamayı sağlayacak bir&nbsp;<strong>debugger</strong>,<strong>&nbsp;kod merkezli metin d&uuml;zenleyiciler, s&ouml;z dizimi vurgulama, &ouml;zelleştirilebilir g&ouml;rsel arabirimler</strong>&nbsp;ve&nbsp;<strong>kapsamlı gezinme ara&ccedil;ları&nbsp;</strong>sunarlar. Tabii ki text edit&ouml;r kullanarak da kod yazmanız m&uuml;mk&uuml;nd&uuml;r ve fakat neden IDE&rsquo;lerin saydığım avantajlarından faydalanmayalım değil mi? N</p>

<p>&nbsp;</p>

<p><strong>Neye G&ouml;re En İyi IDE?</strong></p>

<p>IDE se&ccedil;erken ilki g&ouml;z &ouml;n&uuml;ne alınması gereken konu hangi programlama dilini kullandığınızdır. Her IDE her programlama dilini desteklemez. Ayrıca kullanacağınız teknolojiler de bu konuda belirleyici bir rol oynarlar. Ayrıca maliyet de IDE se&ccedil;iminde belirleyici bir etkendir.</p>

<ol>
	<li>
	<p><strong>Microsoft Visual Studio</strong></p>
	</li>
</ol>

<p><img src="https://lh3.googleusercontent.com/g2__grYWJPAaYHLuZ2oLMbW71uC83RAFZrsIwmujR_i0vxoDMU7iULVpqt33WQ-kL9CGch3cTJAcXSQYE4KnQrtMDNcwXbWdlFRv3saA27wNSym5d7IWPWsmp2vPiO_lXmvXxXs" style="height:406px; width:407px" /></p>

<p>En pop&uuml;ler IDE&rsquo;lerden bir tanesidir Visual Studio. İ&ccedil;inde bulundurduğu yapay zeka desteği sayesinde yazdığınız kodları otomatik olarak tamamlayabilme &ouml;zelliğine sahiptir. Visual Studio&rsquo;nun &uuml;cretli ve &uuml;cretsiz s&uuml;r&uuml;mleri bulunmaktadır. Enterprise versiyonu &uuml;cretliyken Community s&uuml;r&uuml;m&uuml; &uuml;cretsiz olarak sunulmaktadır. Bu a&ccedil;ıdan bireysel yazılımcılar i&ccedil;in maliyet olarak avantajlıdır. &Uuml;cretli s&uuml;r&uuml;m&uuml; ise lisanslanmasına bağlı olarak&nbsp;<strong>$699 - $2.900&nbsp;</strong>arasında değişir. Ayrıca yazdığınız programın 300&rsquo;den fazla cihaz ve tarayıcı ile olan uyumunu Visual Studio &uuml;zerinden kontrol edebilirsiniz.</p>

<p><strong>Desteklediği Diller ve Teknolojiler</strong>: ASP.NET, Javascipt, C++, C#, DHTML, XAML, JScript, Microsoft Azure...</p>

<p><strong>Eksileri:</strong>&nbsp;Microsoft Visual Studio sistem gereksinimleri y&uuml;ksek bir IDE&rsquo;dir. Yeterli bir bilgisayarınız yoksa işinizi halletmeniz uzun zaman alabilir :(</p>

<p><strong>Yazarın notu:</strong>&nbsp;Memory leak&rsquo;leri g&ouml;stermesi sebebiyle C++ kodlayan kullanıcılar i&ccedil;in olduk&ccedil;a avantajlı bir IDE&rsquo;dir.</p>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>IntelliJ IDEA</strong></p>
	</li>
</ol>

<p>&nbsp;</p>

<p><img src="https://lh4.googleusercontent.com/Dyhuwy9B5WJ9o81n_yhYzL4iWBC9Wl0oaWj5T9CFoIJCmDrVdgXhaTPClEdoGripcjSUS4tieMh91Up1BJfgsGv88dhQ85tt1qnUCTZrlTjawh8_UEgrGMtxvSM9IXitd3TFtFo" style="height:448px; width:448px" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&Ouml;zellikle Java geliştiricileri i&ccedil;in tercih edilen ve olduk&ccedil;a kullanışlı bir IDE&rsquo;dir. Microsoft Visual Studio gibi iki t&uuml;r versiyonu bulunur. Yine Community s&uuml;r&uuml;m&uuml; &uuml;cretsiz iken Ultimate s&uuml;r&uuml;m&uuml;<strong>&nbsp;$533 &ndash; $693</strong>&nbsp;arasındadır. IntelliJ IDEA&rsquo;nın en g&uuml;&ccedil;l&uuml; &ouml;zelliğiyse&nbsp;<strong>Git entegrasyonudur</strong>. Bu &ouml;zelliği sayesinde IntelliJ IDEA grup &ccedil;alışmaları a&ccedil;ısından &ccedil;ok kullanışlıdır.</p>

<p><strong>Nasa, Google, Samsung</strong>&nbsp;ve&nbsp;<strong>Twitter</strong>&nbsp;gibi olduk&ccedil;a &uuml;nl&uuml; şirketlerin bu IDE&rsquo;yi kullanması bize bu IDE&rsquo;yi tercih etmek i&ccedil;in &ouml;nemli referanslar.</p>

<p><strong>Desteklediği Diller ve Teknolojiler:</strong>&nbsp;Ruby, Angular, AngularJS, CSS, HTML, JavaScript, LESS, Node JS, PHP, Python, CoffeeScript, Sass, TypeScript&hellip;</p>

<p><strong>Eksileri:</strong>&nbsp;&Ccedil;ok fazla &ouml;zellik barındırmasından dolayı ilk defa kullanan yazılımcılar i&ccedil;in nispeten &ouml;ğrenmesi zor bir IDE&rsquo;dir.</p>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>PyCharm</strong></p>
	</li>
</ol>

<p><img src="https://lh5.googleusercontent.com/b7kJsHfd0icdRUDbbuCQDVNGv-wTTjWJdH40X2UIpYyr8GMAfQ5DtQ0jz2vxw6NdmoiwKWonzBfaUAI5vMfksxywNA3m7EdO06WwBzRU-F80yiZlXF2BGzmWU8BfdEg8tnEFjIw" style="height:424px; width:424px" /></p>

<p>Python geliştiricileri arasında olduk&ccedil;a pop&uuml;ler olan PyCharm&rsquo;ın yine iki t&uuml;r versiyonu bulunur: &uuml;cretsiz olan Community s&uuml;r&uuml;m&uuml; ve&nbsp;<strong>$213 - $690</strong>&nbsp;aralığında değişen Professional s&uuml;r&uuml;m&uuml;. PyCharm i&ccedil;erisinde birka&ccedil; entegrasyon aracı ile sunulmaktadır. Bunlardan bazıları:</p>

<ul>
	<li>
	<p>IPython - Etkileşimli bilgi işlem i&ccedil;in sağlam bir komut kabuğu.</p>
	</li>
	<li>
	<p>Kite - Yapay zeka destekli bir otomatik tamamlama eklentisi.</p>
	</li>
	<li>
	<p>Pylint - Bir kaynak kodu, hata ve kalite denetleyicisi.</p>
	</li>
	<li>
	<p>pytest - Python kodu i&ccedil;in k&uuml;&ccedil;&uuml;k testler yazmak i&ccedil;in bir &ccedil;er&ccedil;eve.</p>
	</li>
	<li>
	<p>WakaTime - &Uuml;retkenlik &ouml;l&ccedil;&uuml;mleri ve otomatik zaman takibi i&ccedil;eren bir geliştirici panosu</p>
	</li>
</ul>

<p><strong>Desteklediği Diller ve Teknolojiler:</strong>&nbsp;Python, Angular, AngularJS, CSS, Python, HTML, JavaScript, Coffee Script, Node, TypeScript&hellip;</p>

<p><strong>Eksileri:</strong>&nbsp;Bazen otomatik satır tamamlama diğer IDE&rsquo;ler kadar yeterli olamaması.</p>

<p><strong>Yazarın notu</strong>: PyCharm &ouml;nceki yazılarımızdan birinde bahsettiğimiz Django Framework&rsquo;&uuml;n&uuml; de desteklemektedir. Nedir bu Django derseniz yazımıza&nbsp;<a href="https://coderspace.io/blog/django-nedir-neden-bu-kadar-populer/" target="_blank">buradan</a>&nbsp;ulaşabilirsiniz.</p>

<p>&nbsp;</p>

<ol>
	<li>
	<p><strong>Xcode</strong></p>
	</li>
</ol>

<p><img src="https://lh5.googleusercontent.com/gebwShl1PkS1YIP5Jw2-iO2b8tHoS8eH2ohl8GQY3KkuZTOdT0D9Lircp0stmmmt0O8kxj9s0PLjH6MfqUBpZBMIbGSXPkz4enNfbuDT3d8M_6P_CPiek7_LVGCsoKXR2V7Db5E" style="height:399px; width:400px" /></p>

<p>Mac kullanıcıları i&ccedil;in &uuml;cretsiz sunulan Xcode, Apple cihazları i&ccedil;in (İpad, İphone, Mac) uygulama geliştirmenize olanak veren a&ccedil;ık kaynaklı bir IDE&rsquo;dir.&nbsp;<strong>Cocoa Touch entegrasyonu</strong>&nbsp;ve IOS i&ccedil;in i&ccedil;erisinde em&uuml;lator bulundurması sayesinde&nbsp;<strong>Apple</strong>&nbsp;cihazlarına yazılım geliştirmek i&ccedil;in olduk&ccedil;a kullanışlı bir IDE&rsquo;dir. Kısacası Xcode, Apple cihazları i&ccedil;in uygulama geliştirmek istiyorsanız en iyi se&ccedil;eneğiniz gibi duruyor.</p>

<p><strong>Desteklediği Diller ve Teknolojiler:</strong>&nbsp;Swift, Objective-C, C++, C, AppleScript</p>

<p><strong>Eksileri:</strong>&nbsp;Sadece MacOS cihazlarına sahip kullanıcıların erişebiliyor oluşu.</p>

<ol>
	<li>
	<p><strong>Android Studio</strong></p>
	</li>
</ol>

<p><img src="https://lh3.googleusercontent.com/E-2dxpn1sd-68eSlFWwHelJUbp5SW0WWwk5OrY3ZlDGkWORu4uhwuR139YBbtu0e4YwfuLdgS5y6D7i4CkIRrLZ_y_H_V8-D2cYp7Lo1Z21xNQ12ZQ0MPcNOPKkyc_1Ql06bB6M" style="height:373px; width:374px" /></p>

<p>Apple cihazları i&ccedil;in geliştirme yapanların Xcode tercih ettiği gibi bir diğer pop&uuml;ler mobil işletim sistemi olan Android geliştiricileri ise genellikle Android Studio&rsquo;yu tercih ederler. Xcode&rsquo;da olduğu gibi Android Studio da kullanılara &uuml;cretsiz olarak sunulmaktadır. Ayrıca mobil işletim sistemi demem sizi yanıltmasın. Android telefonların ve tabletlerin yanı sıra televizyon ve saat gibi bir&ccedil;ok cihazın da kullandığı bi işletim sistemidir ve bu a&ccedil;ıdan geliştirme ortamı yelpazesi a&ccedil;ısından olduk&ccedil;a geniştir. Android Studio&rsquo;nun en g&uuml;&ccedil;l&uuml; &ouml;zelliğiyse size geliştirdiğiniz ortam i&ccedil;in sağladığı em&uuml;lat&ouml;rd&uuml;r. B&ouml;ylece Android&rsquo; uygulama geliştrimek i&ccedil;in bir Android cihaza ihtiya&ccedil; duymazsınız.</p>

<p><strong>Desteklediği Diller ve Teknolojiler:</strong>&nbsp;C++, Java, Kotlin, XML</p>

<p><strong>Eksileri:</strong>&nbsp;Microsoft Visual Studio gibi Android Studio da y&uuml;ksek performanslı cihazlar i&ccedil;in uygun bir cihazıdır. Eğer nispeten g&uuml;&ccedil;l&uuml; bir bilgisayara sahip değilseniz Android Studio biraz yavaş &ccedil;alışabilir.</p>
', N'/Uploads/Blog/670d744b-fdab-4058-bed4-dcf8a664d420.jpg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (11, N'Yazılıma Yeni Başlayacaklara Tavsiyeler', N'<p>&nbsp; &nbsp; &nbsp; &nbsp;Youtube ve udemy gibi eğitim platformlarında bir eğitim videosu izlerken veya&nbsp;yeni bir konu hakkında makale okurken sizin i&ccedil;in &ouml;nemli olan noktaları kendiniz anlayacağınız şekilde notlar alın.&nbsp;Daha sonra ihtiya&ccedil; duyduğunuzda&nbsp;bu notlara bakmanız sizin kısa s&uuml;rede hatırlamanızı sağlayacaktır. Unutmayın, &quot;s&ouml;z u&ccedil;ar, yazı kalır.&quot;</p>

<ul>
	<li>
	<h3>Bol bol pratik yapın</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Kod yazmaktan, pratik yapmaktan ka&ccedil;mayın. &Ccedil;&ouml;zd&uuml;ğ&uuml;n&uuml;z bir &ouml;rneği başka ne şekilde yazabilirsiniz, onu daha az satır ile nasıl yazabilirsiniz onu d&uuml;ş&uuml;n&uuml;n. Boş zamanlarınızda s&uuml;rekli problemler, uygulamalar d&uuml;ş&uuml;n&uuml;n. Zamanla y&uuml;r&uuml;rken de kafanızda kod yazdığınızı fark edeceksiniz. Bu yazılıma yeni başlayan biri olarak size algoritmik d&uuml;ş&uuml;nmeyi de arttıracaktır.</p>

<ul>
	<li>
	<h3>Pes etmeyin</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Hi&ccedil;bir &ouml;rneğe bu zor, bunu yapamam demeyin. Sonu&ccedil;ta birileri onu yaptı, yapıyor veya yapacak. Sizin de onlardan bir farkınız yok. Bilmiyorsanız da araştırarak &ouml;ğrenemeyeceğiniz bilgi artık yok.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Başladığınız projeyi, &ouml;rneği yarıda bırakmayın. Sonuna kadar zorlayın. Son &ccedil;are olarak bulabiliyorsanız yapılmışına bakıp &ouml;ğrenin.</p>

<ul>
	<li>
	<h3>Basit D&uuml;ş&uuml;n&uuml;n</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Tekerleğin icadını ve arabaları d&uuml;ş&uuml;n&uuml;n. &Ouml;nce tekerleği buldu atalarımız. Daha sonra birden fazla tekerleği kullanarak ağır olan nesneleri daha rahat taşıyabildiklerini, daha sonra da g&uuml;n&uuml;m&uuml;zde kullandığımız son model arabalara kadar ilerledi s&uuml;re&ccedil;.&nbsp;Sıfırdan işletim sistemi yazacağım, facebook benzeri site yapacağım diyerek programlamayı &ouml;ğrenmek imkansıza yakın birşey olduğu gibi, yaşayacağnız zorluklar sizin moral ve motivasyonunuza da bir o kadar zarar verecektir.&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; Basit d&uuml;ş&uuml;nmeniz, problemlere en temelinden yaklaşmanız hem kısa zamanda ortaya bir sonu&ccedil; &ccedil;ıkarmanızı sağlar hem de motivasyonunuzu arttırır.&nbsp;</p>

<ul>
	<li>
	<h3>Araştırın</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Kullandığınız dil veya k&uuml;t&uuml;phane ile ilgili d&ouml;k&uuml;manları okuyun. Yazılmış makaleleri inceleyin, yapmaya &ccedil;alışın.&nbsp;Stackoverflow a&ccedil;ılış sayfanız olsun.&nbsp;&Ccedil;&ouml;z&uuml;m&uuml;n&uuml; aradığınız ve orada karşılaştığınız sorun ile y&uuml;zlerce kişinin de karşılaştığını &ccedil;&ouml;z&uuml;m aradığını g&ouml;receksiniz.&nbsp;</p>

<ul>
	<li><strong>Paylaşın</strong></li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Kendinize mutlaka bir Github hesabı a&ccedil;ın. Yaptığınız projeleri burada a&ccedil;ık bir şekilde paylaşın. Alacağınız geri d&ouml;n&uuml;şler ile hem kendinizi geliştirecek hem de iş hayatına atılacağınız zaman&nbsp;yaptığınız iş başvurularında sizi &ouml;ne &ccedil;ıkartacaktır.</p>

<ul>
	<li>
	<h3>Sosyal olun</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Meetup gibi etkinlik sitelerini takip edin, &ouml;zellikle İstanbul, Ankara ve İzmir gibi b&uuml;y&uuml;k şehirlerde yaşıyorsanız yazılım, bilişim, programlama &uuml;zerine olan &uuml;cretsiz etkinliklere katılın.</p>

<ul>
	<li>
	<h3>&Ouml;ğrenmeye a&ccedil;ık olun</h3>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Programcılıkta &ouml;ğreneceğiniz konu asla bitmez. Takip ettiğiniz yerli ve yabancı blog siteleri olsun. G&uuml;ncel teknolojileri, k&uuml;t&uuml;phaneleri takip edin.Alanınız olmayan yada olmadığını d&uuml;ş&uuml;nd&uuml;ğ&uuml;n&uuml;z&nbsp;konular hakkında da gelişmeleri takip edin, genel k&uuml;lt&uuml;r olarak aklınızın bir k&ouml;şesinde kalmasında faydası vardır.</p>

<p>&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;&Ccedil;ok iyi programcı olmak i&ccedil;in onun &uuml;zerine lisans eğitimi almanız zorunlu değildir. Başka bir sekt&ouml;rde, meslekte uzmanlaşıp iyi bir yazılımcı da olabilirsiniz. Tamamen hevesinize ve ilginize kalmış bir şey. Sadece araştırma yapmanız gereken konu daha fazla olacaktır.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;Son olarak da; kimse uzman yazılımcı olarak başlamadı. 1 ay, 1 yıl gibi s&uuml;rede de kimse uzman yazılımcı olamaz. Uzun bir yolda olduğunuzu unutmayın.Eğer bir uygulamaya saatler harcayamıyor, bilgisayar başında sıkılıyor, &ccedil;abuk vazge&ccedil;iyorsanız yazılım sizin i&ccedil;in uygun bir meslek olmayabilir. Yol yakınken tekrardan bir d&uuml;ş&uuml;nmeniz gerekebilir.</p>
', N'/Uploads/Blog/7602bce4-da2f-474a-88f7-0c47997889e6.jpeg', 1)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (12, N'Rakip SEO analizi nasıl yapılır?', N'<p><strong>E-ticaret&nbsp;</strong>siteniz i&ccedil;in iyi bir&nbsp;<strong>SEO&nbsp;</strong>yapışı oluşturmanız ne yazık ki yeterli değildir. Rakiplerinizin bu alan i&ccedil;in neler yaptıklarını, nasıl bir yol izlediklerini yakından takip ederek kendi stratejini rakiplerinizden daha ileri taşıyacak bi&ccedil;imde belirlemeniz gerekecektir.</p>

<h2><strong>Rakip firmaları belirleyin;</strong></h2>

<p>&Ouml;nceliğiniz sizinle rekabet halinde olacak firmaları belirlemeniz olmalıdır. Birebir rakiplerinizin belirlenmesi ardından i&ccedil;erik konusunda size rakip olma potansiyeli taşıyan firma ve dijital yayıncıları belirlemelisiniz.&nbsp;</p>

<p><strong>SEO&nbsp;</strong>konusunda yalnızca rakip firmalar ile yarışmazsınız. Yapılan &ccedil;alışmalar sonucunda sekt&ouml;r i&ccedil;indeki dijital yayıncılar ya da &ccedil;eşitli kuruluşlar da benzer ya da aynı anahtar kelime ve kelime grupları ile &ccedil;alışıyor olabilir. Bu nedenle yalnız rakibiniz olan firmalar ile yarış halinde değilsiniz.</p>

<p>Google arama sonu&ccedil;larının analizi ile izinle doğrudan ya da dolaylı yoldan rakip firma ve yayıncıları belirlemelisiniz.</p>

<h2><strong>Anahtar kelimelerinizi belirleyin;</strong></h2>

<p><strong>E-ticaret&nbsp;</strong>sitenizin genelinde kullanacağınız anahtar kelimeleri belirlemelisiniz. Rakip belirlemesi ardından anahtar kelimelerinizi de belirleyebilirsiniz. Bu aşamada web siteniz &uuml;zerinde kullandığınız anahtar kelimelerin ve rakip firmaların kullanmış olduğu anahtar kelimelerin belirlemesiniz yapmalısınız.</p>

<p>Rakibiniz olan firmaların satmakta olduğu ve sizde bulunmayan &uuml;r&uuml;n ve hizmetler olabilir. Bu &uuml;r&uuml;nler i&ccedil;indeki ortak kelime ve kelime gruplarını da listeleyebilirsiniz. Bu kısımda ama&ccedil; rakiplerinizin &ccedil;alışmalarından ne şekilde verim aldığını incelemek olacaktır.&nbsp;</p>

<p>Daha &ouml;nce web siteniz i&ccedil;in anahtar kelime &ccedil;alışmasında bulunmadıysanız rakip analizi sırasında bu &ccedil;alışmaları yapabilirsiniz. Google Anahtar Kelime Planlayıcısı aracını kullanarak size uyumlu anahtar kelimeleri belirleyerek aranma hacimleri hakkında fikir sahibi olabilirsiniz.&nbsp;</p>

<h2><strong>Alan adı otoritelerini karşılaştırın;</strong></h2>

<p>Rakip firmaların yalnızca anahtar kelime kullanımlarını değil alan adı otoritelerini de karşılaştırmalarınıza dahil etmeniz gereklidir.&nbsp;</p>

<h2><strong>Alan adı otoritesi neden &ouml;nemli?</strong></h2>

<p>Alan adı otoritesi bir web sitenin arama motorları &uuml;zerindeki otoritesini g&ouml;stermektedir. Rakip firmaların alan adı otoritesi ile kendinizi kıyaslayarak bir fikir sahibi olabilirsiniz.&nbsp;</p>

<h2><strong>Rakip firmaların sayfalarını kıyaslayın;</strong></h2>

<p>Web siteniz i&ccedil;inde olan &uuml;r&uuml;n, hizmet ve i&ccedil;eriklerinizi rakip firmalar ile kıyaslamak başka bir y&ouml;ntemdir. Bu analizi tek tek yapmanın zor olacağını bildiğimiz i&ccedil;in &ccedil;eşitli<strong>&nbsp;SEO</strong>&nbsp;ara&ccedil;larından faydalanabilirsiniz.</p>

<p>Bu tip ara&ccedil;lar yardımıyla sahip olduğunuz<strong>&nbsp;e-ticaret&nbsp;</strong>sitenizi rakip firmaların sahip olduğu web siteler ile kıyaslayabilirsiniz. Araştırmalarınız sırasında web siteler i&ccedil;inde ka&ccedil; kelime bulunduğu, anahtar kelimenin yoğunluğu, link sayısı ve sayfa boyutları gibi &ccedil;eşitli detaylar yer alacaktır.&nbsp;</p>

<p>Rakip&nbsp;<strong>SEO&nbsp;</strong>analiz &ccedil;alışmaları ardından rakip firmaların web sitelerinin yapısını g&ouml;rebilirsiniz. Onlardan iyi olduğunuz yanları geliştirecek &ccedil;alışmalar yapabilirsiniz. Eksik olduğunuz ve gelişime a&ccedil;ık olduğunuz kısımlar i&ccedil;in rakiplerinizin &ouml;n&uuml;ne ge&ccedil;ecek &ccedil;alışmalar yapmaya &ouml;zen g&ouml;sterebilirsiniz.</p>
', N'/Uploads/Blog/d9a5764f-e4b9-4fdb-b075-c8803c802cb2.jpg', 4)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (13, N'E-ticaret firmaları için anahtar kelime ipuçları', N'<p>E-ticaret firmalarının organik trafik ve m&uuml;şteri geri d&ouml;n&uuml;ş&uuml;m&uuml; arttırmak i&ccedil;in yapılacak&nbsp;<strong>anahtar kelime</strong>&nbsp;&ccedil;alışması &ouml;nem taşımaktadır.&nbsp;<strong>Anahtar kelime</strong>&nbsp;&ccedil;alışması son derece zorlu bir s&uuml;re&ccedil; olup doğru yapılması durumunda beklenenin &uuml;st&uuml;nde sonu&ccedil;lar oluşturabilir. SEO &ccedil;alışmaları i&ccedil;inde doğru&nbsp;<strong>anahtar kelime&nbsp;</strong>kullanımı alınması beklenen sonu&ccedil;larla doğrudan ilişkilidir.</p>

<h2><strong>Anahtar kelime bulma ipu&ccedil;ları</strong></h2>

<h3><strong>Şirketinizle ilişkili kelimeleri listeleyerek işe başlayın;</strong></h3>

<p>&Ouml;ncelikle şirketiniz, &uuml;r&uuml;n ve hizmetlerinizle doğrudan ilişkili olan kelimeleri listeleyerek işe başlayın. Şirket, &uuml;r&uuml;n ve hizmetlerinizle birlikte her &uuml;r&uuml;n i&ccedil;in ayrı&nbsp;<strong>anahtar kelime</strong>&nbsp;listeleyerek hangi kelime ve kelime grupları &uuml;zerinde &ccedil;alışma yapmanız gerektiği hakkında planlama yapabilirsiniz.</p>

<p>Bir tablo oluşturarak bu&nbsp;<strong>anahtar kelimeleri&nbsp;</strong>oraya listeleyin. Ardından tablonun diğer kısmına aranma hacimleri ve &ouml;ncelik sıralamalarını belirtin.</p>

<h3><strong>Se&ccedil;miş olduğunuz kelimeler &uuml;zerinden kelime grupları hakkında araştırma yapın;</strong></h3>

<p>Belirlemiş olduğunuz<strong>&nbsp;anahtar kelime&nbsp;</strong>ya da kelime grupları hakkında yapılmış arama sorgularını takip ederek, kullanıcılarınız yapmış olduğu arama sorgularıyla ilişkili kelime gruplarınızı belirlemeye başlayabilirsiniz.</p>

<h3><strong>Kelime ve kelime gruplarınızın aranma hacimlerini araştırın;</strong></h3>

<p>Bulmuş olduğunuz kelime ve kelime gruplarının analiziyle bu kelime ve kelime gruplarının aylık aranma hacimlerini belirlemelisiniz. Aylık aranma hacmi; belirli s&uuml;re&ccedil;ler i&ccedil;inde arama motoru kullanıcılarının bu kelime ve kelime gruplarını ka&ccedil; kez aratmış olduğunu g&ouml;sterir.</p>

<h3><strong>Se&ccedil;miş olduğunuz kelime ve kelime gruplarındaki rekabeti inceleyin;</strong></h3>

<p><strong>Anahtar kelime</strong>&nbsp;belirleme s&uuml;recinde bir diğer &ouml;nemli husus kelime ve kelime gruplarının rekabet oranıdır. Bazı kelime ve kelime grupları rakip firmalar tarafından da kullanılması sebebiyle ciddi bir rekabet s&ouml;z konusudur. Bu kelime ve kelime grupları &uuml;zerinden trafik akışı elde edilmesi olduk&ccedil;a g&uuml;&ccedil;t&uuml;r.&nbsp;<strong>Anahtar kelime</strong>&nbsp;belirlemesi yaparken hem hacim hem de rekabet analizi yapılması bu sebeple &ouml;nem taşır.</p>

<p>Aranma oranı y&uuml;ksek kelime ve kelime gruplarının bir o kadar rekabetinin y&uuml;ksek olduğunu s&ouml;yleyebiliriz. Bu noktada organik trafik akışı elde etmek bu kelimelerde son derce zor olacaktır.</p>

<p>SEO &ccedil;alışması i&ccedil;in b&uuml;t&ccedil;esi sınırlı şirket ve işletmeler aranma hacmi orta seviyede olan kelime ve kelime gruplarında trafik kazanmak adına &ccedil;alışmalarını yapabilirler.&nbsp;</p>

<h3><strong>Long tail anahtar kelimeleri araştırın;</strong></h3>

<p>Anahtar kelime belirlemesi &ccedil;alışmalarını s&uuml;rd&uuml;r&uuml;rken long tail&nbsp;<strong>anahtar kelimeleri</strong>&nbsp;de belirlemeniz faydalı olacaktır. Bu kelime ve kelime grupları uzun vadede organik trafik akışı sağlaması sebebiyle dahil edebilirsiniz.</p>

<h3><strong>Sezonluk anahtar kelimeleri &ccedil;ıkartın;</strong></h3>

<p><strong>Anahtar kelime</strong>&nbsp;belirlemesi yaparken sezonluk olarak kullanımı aktif olan kelimeleri belirleyebilirsiniz. Sezonluk<strong>&nbsp;anahtar kelimelerin</strong>&nbsp;yanı sıra kampanya, indirim ve &ccedil;eşitli fırsat d&ouml;nemlerine ilişkin&nbsp;<strong>anahtar kelimeleri</strong>&nbsp;belirlemeniz bu kelime ve kelime gruplarının aranma hacimlerini belirleyerek rekabet oranını analiz etmeniz m&uuml;mk&uuml;nd&uuml;r.</p>

<h3><strong>Aranma hacmi, rekabet ve ilişkili duruma g&ouml;re kelimelerinizi sıralayın;</strong></h3>

<p>Belirtmiş olduğumuz &ccedil;alışmaların yapılması ardından oluşturduğunuz tablo &uuml;zerinden kelimelerinizi listeleyebilirsiniz. Sıralama yapılması aşamasında &ouml;ncelik belirlemeniz son derece &ouml;nem taşır. Bu kısım i&ccedil;in &ouml;ncelik; aranma hacmi, rekabet oranı ve firmanızla olan ilişkisine g&ouml;re sıralama yapabilirsiniz.&nbsp;</p>

<p>Kelime ve kelime gruplarınızın markanız, &uuml;r&uuml;n ve hizmetleriniz ile olan ilişkisi son derece &ouml;nem taşır. Bahsetmiş olduğumuz gibi rekabette aranma hacmi &ouml;nemli olması sebebiyle kelimelerinizi sıralarken bu hususlara dikkat etmenlisiniz.&nbsp;&nbsp;</p>
', N'/Uploads/Blog/56789ff7-b369-4f73-afe7-dfd42a3f9183.jpg', 5)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (14, N'Firma Tanıtımı ve Pazarlama Yöntemleri Nelerdir?', N'<p>Markan tanıtımı yapılırken uzun s&uuml;ren &ccedil;alışmaları da beraberinde d&uuml;ş&uuml;nmelisiniz. İlerleyen s&uuml;re&ccedil;te size geri d&ouml;n&uuml;ş&uuml;m sağlayacak ve kullanıcıların karşısına &ccedil;ıkmanıza yardımcı olacak i&ccedil;erikleri &uuml;retmeniz gereklidir. Marka ve &uuml;r&uuml;n i&ccedil;eriklerinizin yanında sekt&ouml;rel bilgilendirici SEO odaklı &ccedil;alışmalar da ger&ccedil;ekleştirmelisiniz.</p>

<h2><strong>SEO &ccedil;alışmalarına &ouml;zen g&ouml;sterin;</strong></h2>

<p>Marka tanıtımı yaparken kullanacağınız bir diğer konu da SEO &ccedil;alışmalarıdır. Arama motorlarına uyumlu bir marka sahibi olmanız sorgulara daha hızlı yanıt vermenizi sağlayacağından Google b&uuml;nyesinde organik trafik almanızı sağlayacaktır.</p>

<h2><strong>Sesli arama sorguları ve mobil SEO &ccedil;alışması yapın;</strong></h2>

<p>SEO &ccedil;alışmalarını yalnızca masa&uuml;st&uuml; bilgisayar ve yazılı aramalar i&ccedil;in yapmamalısınız. Mobil ve sesli sorgular i&ccedil;inde SEO &ccedil;alışması yapmanız gereklidir. Mobil cihaz kullanımının artmasıyla birlikte mobil cihazlarda yapılan sorgular da bir o kadar artmış durumdadır. Mobil SEO g&uuml;n&uuml;m&uuml;zde olduk&ccedil;a fazla &ouml;nem taşımaktadır.</p>

<h2><strong>Influencer pazarlama &ccedil;alışmalarına yatırım yapın;</strong></h2>

<p>Firma tanıtımı ve marka bilinirliği arttırmak i&ccedil;in infuencer &ccedil;alışmaları yapabilirsiniz. Son yıllarda pop&uuml;lerliği artmaktadır. Marka ve &uuml;r&uuml;n tanıtımı yaparken kullanmış olduğunuz y&ouml;ntemleri marka tanıtımı i&ccedil;inde kullanabilirsiniz. Sosyal platformlar i&ccedil;inde tanınmış kişilerle yapacağınız iş birliğiyle marka bilinirliğinizi arttırabilirsiniz.</p>

<h2><strong>Sosyal medya pazarlama;</strong></h2>

<p>G&uuml;n&uuml;m&uuml;zde pop&uuml;ler pazarlama kanalları arasında sosyal medya da yer almaktadır. Firma tanıtımı i&ccedil;in sosyal medya platformlarında yer almak organik t&uuml;ketici &ccedil;ekecektir. Sosyal medya platformlarında d&uuml;zenli i&ccedil;erik paylaşımı marka bilinirliğinizi arttıracaktır.</p>

<h2><strong>PR &ccedil;alışmaları;</strong></h2>

<p>Geleneksel PR &ccedil;alışmaları markanızı geniş kitlelere tanıtacaktır. PR &ccedil;alışmaları b&uuml;y&uuml;k &ouml;l&ccedil;&uuml;de sizi &ccedil;eşitli basın b&uuml;ltenlerine ulaştıracak kanal g&ouml;revi g&ouml;r&uuml;r. Bu y&ouml;ntemle &ccedil;eşitli kanallar &uuml;zerinden markanızla ilişkili i&ccedil;erikler &ccedil;ıkarabilirsiniz.</p>

<h2><strong>Geleneksel medya;</strong></h2>

<p>Dijital pazarlama &ccedil;alışmalarının yanı sıra geleneksel medyayı tanıtım ara&ccedil;larınız arasına ekleyebilirsiniz. Geleneksel medya etkili olsa da hedef kitlenizi g&ouml;z &ouml;n&uuml;nde bulundurarak bu &ccedil;alışmalara y&ouml;n vermeniz &ouml;nem taşır.</p>

<h2><strong>Google adwords kampanyaları;</strong></h2>

<p>Firma tanıtımı i&ccedil;in kullanabileceğiniz bir diğer kanal Google adwords. SEO &ccedil;alışmaları uzun vadede size başarı kazandıracaktır. Fakat Adwords kampanyaları oluşturarak t&uuml;ketici ile daha hızlı etkileşim oluşturabilirsiniz.</p>

<p>&nbsp;</p>
', N'/Uploads/Blog/5b2994bb-caa9-46e5-8dce-305abe28c82c.jpg', 5)
INSERT [dbo].[Blog] ([BlogID], [Baslik], [Icerik], [ResimUrl], [KategoriID]) VALUES (15, N'Trendyol''da Mağaza Açma Rehberi', N'<p>Dijital d&uuml;nyada satış yapmak isteyen girişimci ve şirket sahipleri&nbsp;<strong>Trendyol</strong>&nbsp;b&uuml;nyesinde mağaza a&ccedil;arak satış yapabilirler.&nbsp;<strong>Trendyol&rsquo;da</strong>&nbsp;mağaza a&ccedil;mak &ccedil;ok daha geniş bir kitleye hitap ederek gelirinizi b&uuml;y&uuml;k &ouml;l&ccedil;&uuml;de arttırabilirsiniz.</p>

<p><strong>Trendyol&rsquo;da&nbsp;</strong>mağaza a&ccedil;arak satış yapmak isteyen girişimci ve işletme sahiplerinin faydalanabileceği bir mağaza a&ccedil;ma rehberi hazırladık. Bu yazımızda cevabını aradığınız t&uuml;m soruların yanıtlarını bulabilirsiniz.</p>

<h1><strong>Trendyol Nedir?</strong></h1>

<p>T&uuml;rkiye&rsquo;nin sayılı b&uuml;y&uuml;k online pazaryerlerinden biri olan&nbsp;<strong>Trendyol</strong>&nbsp;kuruluşunun ilk yıllarında &ouml;zel pop&uuml;ler alışveriş kul&uuml;b&uuml;n&uuml; benimseyerek başlamasına karşın zaman i&ccedil;inde farklı girişimci ve şirketlerin b&uuml;nyesinde mağaza a&ccedil;masına izin vererek &ouml;zel alışveriş kul&uuml;b&uuml; mantığından tıkmıştır.&nbsp;</p>

<p>Aylık 20 milyonu aşkın kullanıcıya sahip&nbsp;<strong>Trendyol</strong>&nbsp;16 milyon kayıt altında kullanıcısı yer almaktadır. T&uuml;m bunların yanı sıra 1500 farklı &uuml;r&uuml;n kategorisine en sahipliği yapmaktadır.</p>

<h2><strong>Trendyol Nasıl &Ccedil;alışır?</strong></h2>

<p><strong>Trendyol&nbsp;</strong>kendi &uuml;r&uuml;n satışlarını yapmak i&ccedil;in kurulmuş ancak sonradan farklı girişimci ve şirketlerin b&uuml;nyesinde mağaza a&ccedil;masına olanak sağlayarak online bir pazaryeri halini almıştır. T&uuml;m bu &ouml;zellikleriyle diğer online pazaryerleri gibi bir iş modeline sahiptir.</p>

<h2><strong>Neden Trendyol&rsquo;da Mağaza A&ccedil;malıyım?</strong></h2>

<p>Mağaza a&ccedil;madan<strong>&nbsp;Trendyol&rsquo;da</strong>&nbsp;satış yapmanız m&uuml;mk&uuml;n değildir.&nbsp;<strong>Trendyol</strong>&nbsp;b&uuml;nyesinde satış yapmak i&ccedil;in mağaza a&ccedil;ma zorunluluğu bulunmaktadır.&nbsp;<strong>Trendyol&rsquo;da</strong>&nbsp;mağaza a&ccedil;manın &ccedil;eşitli avantaj ve dezavantajları bulunmaktadır.&nbsp;</p>

<h2><strong>Trendyol&rsquo;da Mağaza A&ccedil;manın Avantajları Nelerdir?</strong></h2>

<p><strong>Trendyol&rsquo;un&nbsp;</strong>sahip olduğu hedef kitle ile etkileşime girersiniz.&nbsp;<strong>Trendyol&nbsp;</strong>b&uuml;nyesinde a&ccedil;acağınız mağaza&nbsp;<strong>Trendyol&rsquo;un</strong>&nbsp;sahip olduğu hedef kitleye de beraberinde hitap etmenizi sağlayacaktır. Sıfırdan hedef kitle oluşturmanıza gerek yoktur.</p>

<p>Markanızı tanıtma şansına sahip olursunuz. Online pazaryerinde mağaza a&ccedil;mak markanızı olduk&ccedil;a geniş kitlelere tanıtma imk&acirc;nı sağlayacağı i&ccedil;in bilinirliğinizi b&uuml;y&uuml;k &ouml;l&ccedil;&uuml;de arttıracaktır.</p>

<p>&Uuml;r&uuml;n listeleme ve reklam kanalı yaratma;&nbsp;<strong>Trendyol</strong>&nbsp;b&uuml;nyesinde a&ccedil;acağınız mağaza &uuml;r&uuml;nlerinizi bu platformlar &uuml;zerinde geniş kitlelere tanıtmanızı sağlayacaktır. Bir nevi farklı bir reklam kanalına sahip olacaksınız.</p>

<p>Rakip analizi yapabilirsiniz.&nbsp;<strong>Trendyol&nbsp;</strong>kapsamında a&ccedil;acağınız mağaza &uuml;zerinde rakiplerinizi yakından g&ouml;rebilir, tanıyabilir ve indirim kampanyalarını fiyatlandırma stratejilerini analiz ederek rekabette fark yaratabilirsiniz.</p>

<h2><strong>Trendyol&rsquo;da Mağaza A&ccedil;manın Dezavantajları Nelerdir?</strong></h2>

<p>Komisyon kesintileri;&nbsp;<strong>Trendyol</strong>&nbsp;b&uuml;nyesinde yapmış olduğunuz satışlar sonucunda &uuml;r&uuml;n kategorisine g&ouml;re değişen bir komisyon &uuml;cretini&nbsp;<strong>Trendyol&rsquo;a</strong>&nbsp;&ouml;demeniz gerekecektir.<strong>&nbsp;Trendyol</strong>&nbsp;satış komisyonları gelirinizin d&uuml;şmesine neden olabilmektedir.</p>

<p>Rekabette yoğunluk.&nbsp;<strong>Trendyol</strong>&nbsp;&uuml;zerinde &ccedil;ok &ccedil;eşitli firmanın mağazası bulunması nedeniyle &uuml;r&uuml;nlerinizin &ouml;ne &ccedil;ıkartmak olduk&ccedil;a g&uuml;&ccedil;t&uuml;r. Rekabet yoğunluğu nedeniyle ek reklam oluşturmanız i&ccedil;in &uuml;cret &ouml;demeniz gerekecektir.</p>

<p>Uyulması gereken kurallar bulunur.&nbsp;<strong>Trendyol&nbsp;</strong>&uuml;zerinde bir mağaza a&ccedil;manız durumunda her online pazaryerinde olduğu gibi buranın da kendine has kuralları ve işleyişi bulunmaktadır. Bu kurallar size uygun olmasa bile uymanız gerekecektir.</p>

<p>Kendi markanızı yaratma zorunluluğunuz yer almaktadır.&nbsp;<strong>Trendyol&rsquo;da</strong>&nbsp;alışveriş yapan kişiler satıcı firmaları bir marka olarak g&ouml;rmemeleri nedeniyle burada satış yapmak i&ccedil;in kendi markanızı yaratmanız gereklidir. T&uuml;keticiler sonraki alışverişlerinde marka adından ziyade &uuml;r&uuml;n araması yapacağı i&ccedil;in sıfırdan marka oluşturmak olduk&ccedil;a zorlu bir s&uuml;re&ccedil;tir.</p>

<h2><strong>Trednyol&rsquo;da Nasıl Mağaza A&ccedil;ılır?</strong></h2>

<p><strong>Trendyol</strong>&nbsp;&uuml;zerinde mağaza a&ccedil;abilmek i&ccedil;in &ouml;ncelikle şirketinizin bulunması gereklidir. Şirket sahibi olmadan&nbsp;<strong>Trendyol</strong>&nbsp;&uuml;zerinde mağaza a&ccedil;manız m&uuml;mk&uuml;n değildir. Başvuru s&uuml;recinde şirketinize ilişkin bilgileri paylaşmanız gerekecektir.</p>

<p><strong>Trendyol</strong>&nbsp;web sitesi i&ccedil;inde &ldquo;Satıcı Başvurusu&rdquo; sayfasına giriş yaparak &ldquo;Satışa Başla&rdquo; butonu &uuml;zerinden başvuru sayfasına erişim sağlayabilirsiniz. Bu ekran i&ccedil;inde talep edilen belge girişlerinin yapılması ardından talep değerlendirilmeye alınmaktadır.</p>

<p>Olumlu geri d&ouml;n&uuml;şler başvuru kısmında belirttiğiniz iletişim kanalları &uuml;zerinden bilgilendirilirsiniz.</p>

<h2><strong>Trendyol&rsquo;da Mağaza A&ccedil;mak İ&ccedil;in Gerekli Belgeler Nelerdir?</strong></h2>

<p>Başvuruda&nbsp;<strong>Trendyol&rsquo;un</strong>&nbsp;sizden talep ettiği birka&ccedil; belge aşağıdaki gibidir.</p>

<p>&bull; Şirket t&uuml;r&uuml;,</p>

<p>&bull; Vergi kimlik numarası,</p>

<p>&bull; Ticari sicil numarası,</p>

<p>&bull; Ad soyad,</p>

<p>&bull; E-posta</p>

<p>&bull; Cep telefon numarası</p>

<p>Başvurunuz onaylanması ardından birka&ccedil; belge daha talep edilmektedir.</p>

<h2><strong>Trendyol Mağazası Ne Kadar S&uuml;rede A&ccedil;ılmaktadır?</strong></h2>

<p>Başvuruda verilen bilgiler eksizsiz ise onay s&uuml;reci başlamaktadır. Onay s&uuml;reci değişkendir. Başvuru yapılması ardından form &uuml;zerinde verilmiş bilgileriniz sayesinde mağaza a&ccedil;ılış s&uuml;recinden haberdar edileceksiniz.</p>

<h2><strong>Trendyol&rsquo;da Mağaza A&ccedil;ılışı Olmadan Satış Yapmak M&uuml;mk&uuml;n M&uuml;?</strong></h2>

<p><strong>Trendyol&rsquo;da</strong>&nbsp;mağaza a&ccedil;madan satış yapmak ne yazık ki m&uuml;mk&uuml;n değildir. Mağaza sahibi olmanız gerekmektedir. Mağaza a&ccedil;mak i&ccedil;inde fatura kesebilmeniz gerekeceğinden şirket sahibi olma zorunluluğu yer almaktadır. Aksi bir durumdaysanız mağaza a&ccedil;ılışı yapamazsınız.&nbsp;</p>

<h2><strong>Trendyol Komisyon Oranları Nedir?</strong></h2>

<p><strong>Trendyol&rsquo;da</strong>&nbsp;&uuml;r&uuml;n kategorisine g&ouml;re değişken komisyon oranları bulunmaktadır. Bu komisyon oranlarına ilişkin detaylı bilgi mağaza başvurunuzun onay durumunda sizinle paylaşılır.&nbsp;</p>

<h2><strong>Trendyol Mağaza Vergi S&uuml;reci Nasıl İşler?</strong></h2>

<p><strong>Trendyol&rsquo;da</strong>&nbsp;satış yapmak istediğinizde T&uuml;rkiye Cumhuriyeti vergi sistemine g&ouml;re vergi m&uuml;kellefi olma zorunluluğunuz bulunmaktadır. Şirket sahibi olma koşuluyla<strong>&nbsp;Trendyol&rsquo;da&nbsp;</strong>mağaza a&ccedil;tığınızı d&uuml;ş&uuml;n&uuml;rsek fatura keseceğiniz i&ccedil;in vergi m&uuml;kellefi olursunuz.&nbsp;</p>
', N'/Uploads/Hizmet/29d72ad0-1f10-495b-868b-c1f6c1d386fe.png', 4)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimizda] ON 

INSERT [dbo].[Hakkimizda] ([HakkimizdaID], [Aciklama]) VALUES (1, N'<p><strong>Hakkımızda</strong></p>

<p>Yaygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>

<p><strong>Vizyonumuz</strong></p>

<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

<p><strong>Misyonumuz</strong></p>

<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
')
SET IDENTITY_INSERT [dbo].[Hakkimizda] OFF
GO
SET IDENTITY_INSERT [dbo].[Hizmet] ON 

INSERT [dbo].[Hizmet] ([HizmetID], [Baslik], [Aciklama], [ResimUrl]) VALUES (10, N'Butik Yazılımlar', N'<p>Gelişmiş ekibimiz ile size &ouml;zel butik yazılımlar geliştiriyoruz</p>
', N'/Uploads/Hizmet/214193ca-0f19-4fd5-a89e-3a7d4cd018b4.png')
INSERT [dbo].[Hizmet] ([HizmetID], [Baslik], [Aciklama], [ResimUrl]) VALUES (11, N'Teknik Servis', N'<p>İşinde Uzman Servislerimizle 7/24 Hizmetinizdeyiz</p>
', N'/Uploads/Hizmet/1f402010-b999-4aff-a729-b3180f0e2097.jpg')
INSERT [dbo].[Hizmet] ([HizmetID], [Baslik], [Aciklama], [ResimUrl]) VALUES (12, N'Masaüstü Yazılımları', N'<p>Gelişmiş Masa&uuml;st&uuml; Yazılımları ile projelerinizi g&uuml;clendiriyoruz</p>
', N'/Uploads/Hizmet/be102d66-3dbb-4f03-9af9-1c3d14cb42bd.jpg')
INSERT [dbo].[Hizmet] ([HizmetID], [Baslik], [Aciklama], [ResimUrl]) VALUES (13, N'Web Yazılımları', N'<p>Gelişmiş Admin Panelli Web Siteleri İcra Ediyoruz</p>
', N'/Uploads/Hizmet/81616c55-b172-4672-8a29-b27ce4e49bf7.jpeg')
SET IDENTITY_INSERT [dbo].[Hizmet] OFF
GO
SET IDENTITY_INSERT [dbo].[Iletisim] ON 

INSERT [dbo].[Iletisim] ([IletisimID], [Adres], [Tel], [Fax], [Whatsapp], [Facebook], [Twitter], [Instagram]) VALUES (1, N'havzan mah iltekin sokak meram konya', N'5534595405', N'5534595405', N'5534595405', N'https://www.facebook.com/ahmetenes.soylemez/', N'https://twitter.com/', N'https://www.instagram.com/ahmetenessylmz/')
SET IDENTITY_INSERT [dbo].[Iletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd], [KategoriAciklama]) VALUES (1, N'Teknoloji', N'<p>Bura teknoloji <strong>kategorisi&nbsp;</strong></p>
')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd], [KategoriAciklama]) VALUES (4, N'Genel', N'<p>Genel bloglar burada yayınlanacak</p>
')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd], [KategoriAciklama]) VALUES (5, N'Reklam & Pazarlama', N'<p>Reklam &amp; Pazarlama bloglar burada yayınlanacak</p>
')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kimlik] ON 

INSERT [dbo].[Kimlik] ([KimlikID], [Title], [Keywords], [Description], [LogoUrl], [Unvan]) VALUES (1, N'Kurumsal Web Sitesi', N'asp,.net,mvc,sql,c#,kurumsal,web site,blog,e-ticaret,trendyol,yazılım,genel,reklam,teknoloji', N'Asp.net mvc öğrenmek için oluşturduğum web sitesi', N'/Uploads/Kimlik/logo2.png.png', N'yetkili')
SET IDENTITY_INSERT [dbo].[Kimlik] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([SliderID], [SliderBaslik], [SliderAciklama]) VALUES (1, N'Başlık 1', N'<p>A&ccedil;ıklama 1</p>
')
INSERT [dbo].[Slider] ([SliderID], [SliderBaslik], [SliderAciklama]) VALUES (4, N'Başlık 2', N'<p>A&ccedil;ıklama 2</p>
')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorum] ON 

INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (12, N'ahmet', N'sylmz7507@gmail.com', N'd', 9, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (13, N'ahmet', N'sylmz7507@gmail.com', N'yorum onaylama testi', 11, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (14, N'ahmet', N'deneme@gmail.com', N'Gayet başarılı bir yazı olmuş.Bilgiler için teşekkürler', 11, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (21, N'ahmet', N'sylmz7507@gmail.com', N'deneme', 8, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (22, N'Murat', N'murat@gmail.com', N'Blog yazınızı beğendim', 11, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (23, N'Muhammet', N'muhammet@gmail.com', N'Ide tavsiylerinizi beğendim. Güzel bir yazı olmuş Teşekkürler :)', 9, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (24, N'Murat', N'sylmz7507@gmail.com', N'Mağaza açmak istiyordum gerçekten yazınız yardımcı oldu. Teşekkürler', 15, 1)
INSERT [dbo].[Yorum] ([YorumID], [AdSoyad], [Eposta], [Icerik], [BlogID], [Onay]) VALUES (25, N'Sinem Özbaş', N'sinem@gmail.com', N'Muhteşem', 14, 1)
SET IDENTITY_INSERT [dbo].[Yorum] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Kategori]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Blog] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blog] ([BlogID])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorum_Blog]
GO
