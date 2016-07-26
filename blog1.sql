-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Tem 2016, 17:58:50
-- Sunucu sürümü: 10.1.13-MariaDB
-- PHP Sürümü: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog1`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(2, 'testuser', 'testuser', 'test@example.com', 'test@example.com', 1, '671t36fg4pogg0co0gwgkg88kkw80kg', '$2y$13$671t36fg4pogg0co0gwgkeaMcTno/PIwr94X.8KBfQRJQ3XWEvkD.', '2016-07-24 17:26:47', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(3, 'ekinkazan', 'ekinkazan', 'kazanekin@gmail.com', 'kazanekin@gmail.com', 1, '6zb0ntk8iq88kwos0sg8scg0kgks4sc', '$2y$13$6zb0ntk8iq88kwos0sg8sOJNTnAzpGRWwLcJWv8.5bT7EJsBVMdCu', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(4, 'kazanekin', 'kazanekin', 'kazanekinn@gmail.com', 'kazanekinn@gmail.com', 1, 'm0qprls66rk4gc4wkwgkcw0840cs84c', '$2y$13$m0qprls66rk4gc4wkwgkcuHZUUKDa5AT5Qc3XwIxTxGDupfy9sthm', '2016-07-26 17:45:33', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazi`
--

CREATE TABLE `yazi` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ozet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yazi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazi`
--

INSERT INTO `yazi` (`id`, `baslik`, `ozet`, `yazi`) VALUES
(1, 'Baslik4', 'Ozet4', '<p>Metin4</p>'),
(2, 'Sample blog post', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Cum sociis n'),
(3, 'Baslik5', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis&nbsp;<a href="http://127.0.0.1:8000/ekin#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis.'),
(4, 'Sample blog post6', 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh'),
(5, 'Baslik10', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis&nbsp;<a href="http://127.0.0.1:8000/ekin#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis.'),
(6, 'Baslik11', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis&nbsp;<a href="http://127.0.0.1:8000/ekin#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis.'),
(7, 'Baslik12', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis&nbsp;<a href="http://127.0.0.1:8000/ekin#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis.'),
(8, 'Baslik13', 'This blog post shows a few different types of content that''s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '<p>Cum sociis natoque penatibus et magnis&nbsp;<a href="http://127.0.0.1:8000/ekin#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis.'),
(9, 'İzmir''de mutlaka tatmanız gereken 7 lezzet', 'Yurdumuzun en güzel kentlerinin başında gelen İzmir aynı zamanda dayanılmaz lezzetleri ile de anılan bir yer. Şehirde başınızı nereye çevirirseniz çevirin birbirinden leziz tatlarla karşılaşmanız olası. Ancak bunlar arasında bazıları var ki hem şehirde ya', '<p>Yurdumuzun en g&uuml;zel kentlerinin başında gelen İzmir aynı zamanda dayanılmaz lezzetleri ile de anılan bir yer. Şehirde başınızı nereye &ccedil;evirirseniz &ccedil;evirin birbirinden leziz tatlarla karşılaşmanız olası. Ancak bunlar arasında bazıları'),
(10, 'En az ülkeleri kadar ünlü içkiler', 'Almanya''da bira, Fransa''da şarap, Rusya''da votka ve daha fazlası... Tüm bu içkiler artık tüm dünyada kitlelerin severek tükettiği seçenekler olsa da bu ülkelerde yeri bir başka. Hangi ülkede hangi içki türü daha çok seviliyor dersiniz?', '<p>Almanya &ndash; Bira</p><p>Almanya demek bir anlamda bira demek. &Uuml;lkede bu i&ccedil;ki o kadar &uuml;nl&uuml; ki&nbsp;<strong><a target="_blank" href="https://www.enuygun.com/galeri/simdi-oktoberfest-zamani/">M&uuml;nih şehrinde adına d&uuml;zenle'),
(11, 'Çocuklarla seyahat ederken hayat kurtaran 10 öneri', 'Çocuklarla birlikte yolculuk her kadar keyifli ve eğlenceli olsa da bir o kadar zorlayıcı olabiliyor. Özellikle küçük dostlarımızla birlikte ilk kez yola çıkacaksanız bu önerilere dikkat ederek yol boyunca rahat edebilir ve seyahatinizi sorunsuz bir şekil', '<p>&Ccedil;ocuklarla birlikte yolculuk her kadar keyifli ve eğlenceli olsa da bir o kadar zorlayıcı olabiliyor. &Ouml;zellikle k&uuml;&ccedil;&uuml;k dostlarımızla birlikte ilk kez yola &ccedil;ıkacaksanız bu &ouml;nerilere dikkat ederek yol boyunca rahat'),
(12, 'Today’s health-care decision: In Plain English', 'Shortly after ten o’clock this morning, and after more than one false alarm, the Court issued its decision in the challenges to the constitutionality of the Affordable Care Act.  In this post, we will dissect the decision in Plain English.  But before we ', 'Shortly after ten o&rsquo;clock this morning, and after more than one false alarm, the Court issued its decision in the challenges to the constitutionality of the Affordable Care Act.&nbsp; In this post, we will dissect the decision in Plain English.&nbsp'),
(14, 'Mobil dünyanın hayatımızdaki yeri', 'Geçmişten günümüze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin düzenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır', 'Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması ye'),
(15, 'Mobil dünyanın hayatımızdaki yeri', 'Geçmişten günümüze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin düzenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır', 'Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.Ge&ccedil;mişten g&uuml;n&uuml;m&uuml;ze baktığımızda bilgi, sahip olunan en değerli olgudur. Tarih boyunca toplumlarda en değerliler Bilgelerdir. Bilgisayarların gelişmesi ile bilgilerin d&uuml;zenli saklanması internetin gelişmesi ile hızla yayılması yeni bir boyut kazandırmıştır. Bilgiye hızlı ulaşmak ise neredeyse bilgi kadar &ouml;nemli bir hal almış durumda. Evde, işte, sokakta aklınıza gelebilecek her yerde bilgiye erişim yeni bir d&ouml;nemi &ldquo;Mobil devrimi&rdquo; ger&ccedil;ekleştirmiştir.'),
(16, 'Deneme Başlığı', 'Deneme Özetidir Deneme ÖzetidirDeneme Özetidir Deneme Özetidir Deneme Özetidir Deneme Özetidir Deneme ÖzetidirDeneme Özetidir', 'bu birinci satırikinci satırmerhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar&nbsp;merhablar'),
(17, 'adfassdasd', 'sadasdas', 'asfasfsfasjlafjlv&nbsp;&nbsp;vnkl&lt;e ılhwpı.l g.ş');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Tablo için indeksler `yazi`
--
ALTER TABLE `yazi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `yazi`
--
ALTER TABLE `yazi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
