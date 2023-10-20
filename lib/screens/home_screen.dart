import 'dart:math';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/models/category_movie.dart';
import 'package:ui/models/movie_model.dart';
import 'package:ui/screens/detail_movie.dart';
import 'package:ui/screens/list_movie.dart';
import 'package:ui/screens/list_template.dart';
import 'navigasi_bottom.dart';
import 'search_bar.dart';
import 'list_template.dart';

var menus = [
  FeatherIcons.home,
  FeatherIcons.list,
  // FeatherIcons.messageCircle,
  // FeatherIcons.user
];
var selectedCategory = 0;
    final latestMoviesForCard = movies.take(5).toList();


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigasiBottom(),
      backgroundColor: const Color(0xFF000B49),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF000B49),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    _greetings(),
                    const SizedBox(height: 17),
                    _card(),
                    const SizedBox(height: 20),
                    Searchbar(),
                    const SizedBox(height: 20),
                    _category(context),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Latest Movie",
                          style: GoogleFonts.manrope(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              _cardmovie(),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommendation Movie",
                    style: GoogleFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              _movie(), // Memanggil widget _movie() di sini
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(MovieDetail detailmovie) {
    return Container(
      width: 150,
      height: 250,
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/${detailmovie.image}"),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              detailmovie.nama,
              style: GoogleFonts.manrope(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _cardmovie() {
    // Urutkan daftar film berdasarkan waktu tambah, dengan yang terbaru di atas
    movies.sort((a, b) => b.AddedAt.compareTo(a.AddedAt));

    // Batasi jumlah film yang ditampilkan menjadi 5
    final latestMoviesForCard = movies.take(5).toList();

    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: latestMoviesForCard.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMovie(movie: latestMoviesForCard[index]),
                ),
              );
            },
            child: promoCard(latestMoviesForCard[index]),
          );
        },
      ),
    );
  }

  AspectRatio _card() {
    return AspectRatio(
      aspectRatio: 336 / 184,
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Color.fromARGB(255, 87, 85, 158),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/bg1.png',
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "Explore ",
                          style: GoogleFonts.manrope(
                              fontSize: 18,
                              color: Colors.white,
                              height: 150 / 100),
                          children: const [
                            TextSpan(
                                text: "Movies, \n ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                            TextSpan(text: "Dive into "),
                            TextSpan(
                                text: "Entertainment, \nAnytime Anywhere",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                          ])),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        border: Border.all(
                            color: Colors.white.withOpacity(.12), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "See details",
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _category(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final isSelected = selectedCategory == index;
          final targetColor =
              isSelected ? Colors.white : Color.fromARGB(255, 46, 45, 46).withOpacity(.3);

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListViewMovie(
                    category: CategoryMovie.all()[index],
                  ),
                ),
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF818AF9) : const Color(0xFFF6F6F6),
                border: isSelected
                    ? Border.all(
                        color: const Color(0xFFF1E5E5).withOpacity(.22),
                        width: 2,
                      )
                    : null,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  CategoryMovie.all()[index],
                  style: GoogleFonts.manrope(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: targetColor,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: CategoryMovie.all().length,
      ),
    );
  }

  Padding _greetings() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Movie-lovers!",
                style: GoogleFonts.manrope(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  // Ini adalah kode yang diperbarui untuk menampilkan film di daftar
  ListView _movie() {
    // Misalnya, Anda ingin menampilkan 5 film yang berbeda di sini
    final differentMovies = getDifferentMovies(); // Isi ini dengan cara memilih film yang berbeda

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => MovieListItem(detailmovie: differentMovies[index]),
      separatorBuilder: (context, index) => const SizedBox(
        height: 11,
      ),
      itemCount: 5,
    );
  }

  List<MovieDetail> getDifferentMovies() {
    // List semua film yang tersedia
    List<MovieDetail> allMovies = movies;

    // List film yang ada di _cardmovie()
    List<MovieDetail> moviesInCard = latestMoviesForCard;

    // Buat list film yang berbeda
    List<MovieDetail> differentMovies = [];

    // Perulangan melalui semua film dan tambahkan yang belum ada di _cardmovie() ke differentMovies
    for (var movie in allMovies) {
      if (!moviesInCard.contains(movie)) {
        differentMovies.add(movie);
      }
    }

    // Acak urutan film-film yang berbeda
    differentMovies.shuffle(Random());

    return differentMovies;
  }
}
