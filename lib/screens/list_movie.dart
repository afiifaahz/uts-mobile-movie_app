import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/models/movie_model.dart';
import 'package:ui/screens/list_template.dart';
import 'navigasi_bottom.dart';
import 'search_bar.dart';

class ListViewMovie extends StatelessWidget {
  final String category;
  // MovieDetail detailmovie;


  ListViewMovie({required this.category});

  @override
  Widget build(BuildContext context) {
    // Filter daftar film sesuai kategori yang dipilih
    List<MovieDetail> katmov = movies
        .where((movie) => movie.kategori.contains(category))
        .toList();
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 53),
      bottomNavigationBar: NavigasiBottom(),
      appBar: AppBar(
        title: Text(
          category,
          style: GoogleFonts.manrope(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        
        backgroundColor: Color.fromARGB(255, 22, 22, 53),
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Searchbar(),
          SizedBox(height: 20), // Tambahkan spasi di sini
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: katmov.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 11,
              ),
              itemBuilder: (context, index) {
                return MovieListItem(detailmovie: katmov[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
