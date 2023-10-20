
import 'package:ui/models/category_movie.dart';

class MovieDetail {
  String nama;
  String image;
  List<String> kategori ;
  String tahun ;
  Duration durasi;
  String deskripsi;
  double rating;
  DateTime AddedAt;

  MovieDetail(
      {required this.nama,
      required this.image,
      required this.kategori,
      required this.tahun,
      required this.durasi,
      required this.deskripsi,
      required this.rating,
      required this.AddedAt
      });
}

var movies = [
  MovieDetail(
    nama: "Avengers: EndGame", 
    image: "avengers.jpeg", 
    kategori: [CategoryMovie.action], 
    tahun: "2019",
    durasi: Duration(hours: 3, minutes: 1),
    deskripsi: "Avengers: Endgame adalah film superhero epik yang dirilis pada tahun 2019 oleh Marvel Studios. Film ini merupakan puncak dari rangkaian film Marvel Cinematic Universe (MCU) dan menghadirkan sebuah klimaks yang sangat dinantikan. Ceritanya mengisahkan upaya para Avengers untuk mengalahkan Thanos, seorang penjahat yang kuat, setelah ia berhasil menghancurkan setengah populasi alam semesta dengan Infinity Stones. \n\n Para pahlawan Marvel, seperti Iron Man, Captain America, Thor, Hulk, dan Black Widow, bersatu kembali untuk mengembalikan segala sesuatu ke keadaan semula. Mereka melakukan perjalanan melintasi waktu untuk mengumpulkan Infinity Stones dan menghadapi berbagai tantangan. Film ini penuh dengan aksi spektakuler, momen emosional, dan pengorbanan yang memukau, menjadikannya sebagai salah satu film superhero terbesar dalam sejarah sinema.",
    rating: 4.45,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Maleficent", 
    image: "Maleficent.jpeg", 
    kategori: [CategoryMovie.action], 
    tahun: "2014",
    durasi: Duration(hours: 1, minutes: 38),
    deskripsi: "'Maleficent' adalah sebuah film fantasi yang dirilis pada tahun 2014. Film ini adalah adaptasi dari kisah dongeng Putri Tidur yang terkenal, tetapi diceritakan dari sudut pandang Maleficent, karakter antagonis dalam cerita aslinya. Diperankan oleh Angelina Jolie, Maleficent adalah seorang peri jahat yang memiliki perubahan mendalam dalam hidupnya setelah mengalami pengkhianatan. Cerita ini mengungkapkan sisi manusiawi dan kompleks dari karakter Maleficent serta hubungannya dengan Putri Aurora. Film ini memadukan elemen-elemen dongeng dengan visual yang menakjubkan, memberikan sudut pandang yang berbeda pada kisah klasik dan menggambarkan pesan tentang kebaikan, pengampunan, dan empati.",
    rating: 3.45,
    AddedAt: DateTime.now()

  ),

  MovieDetail(
    nama: "La La Land", 
    image: "La La Land (2016).jpeg", 
    kategori: [CategoryMovie.romance], 
    tahun: "2016",
    durasi: Duration(hours: 2, minutes: 8),
    deskripsi: "'La La Land' adalah sebuah film musikal yang dirilis pada tahun 2016, disutradarai oleh Damien Chazelle. Film ini mengisahkan kisah cinta antara Mia (diperankan oleh Emma Stone), seorang aktris muda, dan Sebastian (diperankan oleh Ryan Gosling), seorang pemain jazz yang berambisi. Mereka berdua bertemu di Los Angeles, di mana kisah cinta mereka berkembang sambil mengejar impian mereka masing-masing dalam dunia seni. Film ini memadukan musik, tarian, dan cerita cinta dalam gaya yang mengagumkan, sambil menjelajahi tema-tema seperti impian, kegigihan, dan komitmen terhadap apa yang kita cintai. 'La La Land' meraih banyak penghargaan dan nominasi, termasuk Academy Awards, dan menjadi salah satu film musikal yang paling disukai oleh penonton dan kritikus.",
    rating: 4.0,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Elemental", 
    image: "Disney Pixar Elemental Movie Review.jpeg", 
    kategori: [CategoryMovie.animation], 
    tahun: "2023",
    durasi: Duration(hours: 1, minutes: 42),
    deskripsi: "'Elemental' adalah sebuah film dokumenter yang mengangkat kisah tiga pahlawan lingkungan dari tiga negara yang berbeda: Kanada, India, dan Selandia Baru. Film ini menjelajahi perjuangan mereka dalam melindungi dan memulihkan lingkungan alam mereka masing-masing. Dari pengelolaan air hujan hingga upaya pelestarian lingkungan, 'Elemental' menghadirkan perjalanan inspiratif para tokoh ini dalam upaya mereka menjaga keberlanjutan planet kita. Film ini menggugah kesadaran akan isu-isu lingkungan global dan menyoroti pentingnya tindakan individu untuk melestarikan bumi kita.",
    rating: 3.5,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Inside Out",
    image: "insideout.jpeg",
    kategori: [CategoryMovie.animation],
    tahun: "2015",
    durasi: Duration(hours: 1, minutes: 35),
    deskripsi: "'Inside Out' adalah sebuah film animasi yang diproduksi oleh Pixar Animation Studios dan dirilis oleh Walt Disney Pictures pada tahun 2015. Cerita film ini berfokus pada perjalanan emosi seorang gadis remaja bernama Riley, yang diwakili oleh lima karakter emosi dalam dirinya: Joy (Kegembiraan), Sadness (Kesedihan), Anger (Kemarahan), Fear (Ketakutan), dan Disgust (Ketidaksukaan). Mereka bekerja bersama dalam kepala Riley untuk menghadapi perubahan besar dalam hidupnya, termasuk pindah ke sebuah kota baru. \nFilm ini menggambarkan petualangan emosional yang unik, di mana Joy dan Sadness terperangkap di dalam dunia pikiran Riley, dan mereka harus berusaha kembali ke markas pusat emosi. Selama perjalanan mereka, Riley mengalami berbagai perasaan dan belajar bagaimana emosi-emosi ini berinteraksi dalam kehidupan sehari-hari. 'Inside Out' adalah film yang menyentuh, lucu, dan memberikan pemahaman yang mendalam tentang kompleksitas perasaan manusia, terutama dalam masa transisi ke remaja.",
    rating: 4.05,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Eternal Sunshine of The Spotless Mind",
    image: "eternalsunshine.jpeg",
    kategori: [CategoryMovie.romance],
    tahun: "2004",
    durasi: Duration(hours: 1, minutes: 48),
    deskripsi: "'Eternal Sunshine of the Spotless Mind' adalah sebuah film drama romantis yang dirilis pada tahun 2004. Film ini disutradarai oleh Michel Gondry dan ditulis oleh Charlie Kaufman. Ceritanya mengikuti kisah Joel Barish (diperankan oleh Jim Carrey) dan Clementine Kruczynski (diperankan oleh Kate Winslet), dua orang yang menghapus kenangan mereka tentang satu sama lain dengan bantuan sebuah prosedur ilmiah yang inovatif. Namun, selama proses ini, Joel mulai menyadari bahwa dia ingin mempertahankan kenangan mereka bersama, meskipun ada masalah dan konflik dalam hubungan mereka. Film ini menggabungkan unsur-unsur fiksi ilmiah dengan drama romantis untuk menggambarkan hubungan yang rumit dan perasaan cinta yang abadi. 'Eternal Sunshine of the Spotless Mind' telah diakui secara luas atas penampilan gemilang para aktor dan cerita yang mendalam, dan sering dianggap sebagai salah satu film romantis modern yang paling berkesan.",
    rating: 4.15,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Incredibles 2",
    image: "incredibles2.jpeg",
    kategori: [CategoryMovie.animation],
    tahun: "2018",
    durasi: Duration(hours: 2, minutes: 35),
    deskripsi: "'Incredibles 2' adalah film animasi yang dirilis pada tahun 2018 dan merupakan sekuel dari film 'The Incredibles' yang sukses. Film ini mengisahkan keluarga superhero Parr, yang terdiri dari Bob (Mr. Incredible), Helen (Elastigirl), dan anak-anak mereka yang memiliki kekuatan super. Kali ini, Helen yang menjadi pusat perhatian sebagai pahlawan super, sementara Bob mengurus anak-anak di rumah. Mereka berusaha untuk mengungkap misteri di balik penjahat baru bernama Screenslaver. Film ini memadukan elemen-elemen aksi, komedi, dan pesan tentang keluarga dalam cerita yang menghibur dan memikat penonton dengan visual animasi yang canggih.",
    rating: 3.8,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Fast & Furious: Hobbs & Shaw",
    image: "fastfurious.jpeg",
    kategori: [CategoryMovie.action],
    tahun: "2019",
    durasi: Duration(hours: 2, minutes: 16),
    deskripsi: "Fast & Furious: Hobbs & Shaw adalah sebuah film aksi yang dirilis pada tahun 2019. Film ini adalah spin-off dari waralaba 'Fast & Furious' yang terkenal. Ceritanya berfokus pada dua karakter utama, yaitu Luke Hobbs (Dwayne Johnson) dan Deckard Shaw (Jason Statham), yang harus bekerja bersama untuk menghadapi ancaman seorang penjahat super berbahaya yang diperankan oleh Idris Elba. Mereka harus bekerjasama untuk menghentikan penjahat ini dan menyelamatkan dunia dari bencana global. Film ini menyajikan aksi luar biasa, kecepatan mobil, dan humor yang menghibur, menjadikannya sebagai tambahan yang seru dalam franchise Fast & Furious.",
    rating: 3.25,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Before Sunrise",
    image: "beforesunrise.jpeg",
    kategori: [CategoryMovie.romance],
    tahun: "1995",
    durasi: Duration(hours: 1, minutes: 41),
    deskripsi: "'Before Sunrise' adalah sebuah film drama romantis yang dirilis pada tahun 1995 dan disutradarai oleh Richard Linklater. Film ini berkisah tentang pertemuan romantis antara dua orang asing, Jesse (diperankan oleh Ethan Hawke) dan Celine (diperankan oleh Julie Delpy), yang bertemu di sebuah kereta api di Eropa. Mereka memutuskan untuk menjalani malam bersama di Vienna, berbicara tentang kehidupan, cinta, dan impian mereka. Film ini mengikuti perjalanan mereka selama satu malam di kota yang indah itu, menggambarkan percakapan yang mendalam dan koneksi emosional yang tumbuh di antara mereka. 'Before Sunrise' dikenal karena dialog-dialognya yang cerdas dan penampilan yang kuat dari para pemeran utamanya. Film ini adalah awal dari trilogi yang juga mencakup 'Before Sunset' dan 'Before Midnight' yang mengikuti perjalanan hubungan mereka dalam beberapa tahun kemudian.",
    rating: 4.05,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Me Before You",
    image: "mebeforeyou.jpeg",
    kategori: [CategoryMovie.romance],
    tahun: "2016",
    durasi: Duration(hours: 1, minutes:50),
    deskripsi: "'Incredibles 2' adalah film animasi yang dirilis pada tahun 2018 dan merupakan sekuel dari film 'The Incredibles' yang sukses. Film ini mengisahkan keluarga superhero Parr, yang terdiri dari Bob (Mr. Incredible), Helen (Elastigirl), dan anak-anak mereka yang memiliki kekuatan super. Kali ini, Helen yang menjadi pusat perhatian sebagai pahlawan super, sementara Bob mengurus anak-anak di rumah. Mereka berusaha untuk mengungkap misteri di balik penjahat baru bernama Screenslaver. Film ini memadukan elemen-elemen aksi, komedi, dan pesan tentang keluarga dalam cerita yang menghibur dan memikat penonton dengan visual animasi yang canggih.",
    rating: 3.7,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Onward",
    image: "ONWARD.jpeg",
    kategori: [CategoryMovie.animation],
    tahun: "2020",
    durasi: Duration(hours: 1, minutes: 42),
    deskripsi: "'ONWARD' adalah sebuah film animasi komedi-fantasi yang diproduksi oleh Pixar Animation Studios dan didistribusikan oleh Walt Disney Pictures. Film ini mengisahkan petualangan dua saudara elf, Ian dan Barley Lightfoot, yang hidup di dunia ajaib yang modern, namun kehilangan unsur-unsur magisnya. Mereka memulai perjalanan epik untuk mencoba mengembalikan sang ayah yang telah meninggal selama sehari dengan menggunakan tongkat sihir warisan mereka. Selama perjalanan, mereka menghadapi berbagai tantangan dan mengejar petunjuk untuk mencapai tujuan mereka. 'ONWARD' menggabungkan unsur-unsur komedi, fantasi, dan emosi yang membuatnya menjadi film yang menghibur sekaligus mengharukan.",
    rating: 3.7,
    AddedAt: DateTime.now()
  ),

  MovieDetail(
    nama: "Ouija",
    image: "ouija.jpeg",
    kategori: [CategoryMovie.horror],
    tahun: "2014",
    durasi: Duration(hours: 1, minutes: 29),
    deskripsi: "'Ouija' adalah film horor supernatural yang dirilis pada tahun 2014. Ceritanya berkisah tentang sekelompok remaja yang mencoba bermain papan Ouija untuk menghubungi arwah teman mereka yang telah meninggal. Namun, mereka tanpa sadar membangkitkan kekuatan jahat yang mengancam nyawa mereka. Film ini penuh dengan ketegangan, misteri, dan jumpscare yang menegangkan, membuat penonton terjebak dalam kengerian yang tak terduga. 'Ouija' adalah salah satu film horor yang cukup populer dan sukses di genre ini.",
    rating: 2.25,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "Annabelle",
    image: "annabele.jpeg",
    kategori: [CategoryMovie.horror],
    tahun: "2014",
    durasi: Duration(hours: 1, minutes: 39),
    deskripsi: "'Annabelle' adalah film horor Amerika yang merupakan prekuel dari film 'The Conjuring'. Ceritanya berkisah tentang seorang pasangan muda, John dan Mia, yang menerima sebuah boneka antik bernama Annabelle sebagai hadiah. Namun, kebahagiaan mereka segera berubah menjadi ketakutan ketika boneka tersebut menjadi terkait dengan aktivitas supranatural yang menakutkan. Mereka mencari bantuan dari para ahli supranatural untuk menghadapi kekuatan jahat yang mengancam kehidupan mereka. 'Annabelle' adalah film yang berhasil menciptakan ketegangan dan atmosfer mencekam, menjadikannya salah satu film horor yang sukses secara komersial.",
    rating: 2.7,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "Talk to Me",
    image: "talktome.jpeg",
    kategori: [CategoryMovie.horror],
    tahun: "2022",
    durasi: Duration(hours: 1, minutes: 35),
    deskripsi: "'Talk to Me'' adalah film horor yang mengisahkan kisah misterius seorang pria yang mulai mendengar suara-suara aneh dan menakutkan dari makhluk gaib setelah ia secara tidak sengaja terlibat dalam sebuah ritual mistis. Ketika dia mencoba untuk memahami asal usul suara-suara tersebut, dia terperangkap dalam dunia yang penuh dengan ketakutan dan ketidakpastian. Film ini menggabungkan elemen-elemen horor psikologis dan supernatural untuk menciptakan pengalaman yang menghantui dan mencekam bagi para penontonnya.",
    rating: 3.6,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "The Conjuring",
    image: "The Conjuring.jpeg",
    kategori: [CategoryMovie.horror],
    tahun: "2013",
    durasi: Duration(hours: 1, minutes: 52),
    deskripsi: "'The Conjuring' adalah film horor Amerika yang dirilis pada tahun 2013. Film ini disutradarai oleh James Wan dan didasarkan pada kisah nyata dari pasangan paranormal Ed dan Lorraine Warren. Ceritanya berfokus pada salah satu kasus paling terkenal yang mereka hadapi, yaitu gangguan supranatural di rumah keluarga Perron. Pasangan Warren membantu keluarga tersebut yang teror oleh aktivitas paranormal yang mengerikan, termasuk penampakan hantu dan berbagai fenomena aneh. Film ini berhasil menciptakan ketegangan yang intens dan menghadirkan atmosfer horor yang menakutkan, membuatnya menjadi salah satu film horor yang paling disukai oleh penggemar genre ini. 'The Conjuring' telah menjadi awal dari waralaba film horor yang sukses dan telah menghasilkan beberapa sekuel dan spin-off yang populer.",
    rating: 3.75,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "Yes Man",
    image: "yes man.jpeg",
    kategori: [CategoryMovie.comedy],
    tahun: "2008",
    durasi: Duration(hours: 1, minutes: 44),
    deskripsi: "'Film Yes Man' adalah sebuah komedi yang dirilis pada tahun 2008, dibintangi oleh aktor terkenal, Jim Carrey. Film ini mengisahkan tentang seorang pria bernama Carl Allen (diperankan oleh Jim Carrey) yang cenderung menolak berbagai peluang dan kesempatan dalam hidupnya. Namun, setelah menghadiri sebuah seminar motivasi yang mendorongnya untuk mengatakan 'ya' pada segala hal, hidup Carl mengalami perubahan drastis. Ia mulai mengikuti semua tawaran dan kesempatan yang datang padanya, yang memunculkan berbagai kejadian lucu dan situasi yang tak terduga. 'Yes Man' menggambarkan perjalanan Carl dalam mengatasi sifat skeptisnya dan mengejar kebahagiaan melalui pengalaman-pengalaman baru yang dihadapinya. Film ini merupakan campuran antara komedi dan pesan positif tentang pentingnya terbuka pada peluang dalam hidup.",
    rating: 3.4,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "Home Alone",
    image: "Home Alone.jpeg",
    kategori: [CategoryMovie.comedy],
    tahun: "1990",
    durasi: Duration(hours: 1, minutes: 43),
    deskripsi: "'Home Alone' adalah film komedi keluarga yang dirilis pada tahun 1990. Ceritanya mengikuti petualangan seorang anak laki-laki bernama Kevin McCallister yang ditinggalkan oleh keluarganya yang sibuk dalam perjalanan liburan Natal mereka. Kevin harus belajar untuk menjaga diri sendiri dan rumahnya dari dua penjahat nakal yang mencoba mencuri harta keluarganya. Dengan kecerdikan dan trik lucu, Kevin berhasil menghadapi penjahat-penjahat tersebut. Film ini menjadi terkenal karena aksi kocak Kevin dalam melawan penjahat-penjahat tersebut, membuatnya menjadi salah satu film liburan yang paling ikonik dan disukai oleh penonton dari berbagai usia.",
    rating: 3.85,
    AddedAt: DateTime.now()
  ),

    MovieDetail(
    nama: "Captain Fantastic",
    image: "captainfantastic.jpeg",
    kategori: [CategoryMovie.drama],
    tahun: "2016",
    durasi: Duration(hours: 1, minutes: 58),
    deskripsi: "'Captain Fantastic' adalah film drama Amerika yang dirilis pada tahun 2016, disutradarai oleh Matt Ross. Film ini mengisahkan tentang seorang pria bernama Ben Cash, yang diperankan oleh Viggo Mortensen, yang membesarkan enam anaknya di hutan belantara Pasifik Barat Laut. Mereka hidup jauh dari peradaban modern dan menjalani gaya hidup alternatif yang sangat berbeda dari kebanyakan orang. Namun, ketika mereka terpaksa kembali ke dunia luar, mereka menghadapi tantangan besar untuk beradaptasi dengan masyarakat konvensional. Film ini menyajikan kisah tentang keluarga, kebebasan, dan pencarian makna hidup.",
    rating: 3.9,
    AddedAt: DateTime.now()
  ),





  
      
];
