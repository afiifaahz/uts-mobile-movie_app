import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/models/movie_model.dart';
import 'package:ui/screens/detail_movie.dart';

class MovieListItem extends StatelessWidget {
  final MovieDetail detailmovie;

  MovieListItem({required this.detailmovie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 22, 22, 53),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 221, 221, 221).withOpacity(.12),
                blurRadius: 40,
                offset: const Offset(0, 2),
              ),
            ],
            
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/${detailmovie.image}',
                  width:95,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailmovie.nama,
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 7),
                    RichText(
                      text: TextSpan(
                        text: "Genre: ${detailmovie.kategori.join(', ')}",
                        style: GoogleFonts.manrope(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const SizedBox(width: 7),
                        Text(
                          "${detailmovie.tahun}",
                          style: GoogleFonts.manrope(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Tombol "Watch Now"
              InkWell(
                onTap: () {
                  // Aksi yang akan diambil ketika tombol "Watch Now" ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMovie(movie: detailmovie), // Ganti DetailMoviePage dengan nama halaman detail Anda
                    ),
                  );
                },
                child: Container(
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: const Color.fromARGB(255, 67, 122, 167),
                  ),
                  child: Center(
                    child: Text(
                      "Watch Now",
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
