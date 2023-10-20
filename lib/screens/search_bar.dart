import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 241, 241),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            FeatherIcons.search,
            color: Color.fromARGB(255, 161, 160, 160),
          ),
          hintText: "Find best movies",
          hintStyle: GoogleFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 161, 160, 160),
            height: 150 / 100,
          ),
        ),
      ),
    );
  }
}

class Searchbar2 extends StatelessWidget {
  const Searchbar2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 241, 241),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            FeatherIcons.search,
            color: Color.fromARGB(255, 161, 160, 160),
          ),
          hintText: "Find best movies",
          hintStyle: GoogleFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 161, 160, 160),
            height: 150 / 100,
          ),
        ),
      ),
    );
  }
}
