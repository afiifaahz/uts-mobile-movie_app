import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class NavigasiBottom extends StatelessWidget {
  const NavigasiBottom({Key? key});

  @override
  Widget build(BuildContext context) {
    return _bottomNavigationBar();
  }

  Container _bottomNavigationBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 40, 40, 78),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Menggunakan spaceAround untuk ikon seimbang di dalam row
        children: [
          // Contoh penggunaan ikon dari daftar menus pada indeks tertentu
          _iconFromFeather(FeatherIcons.home),
          _iconFromFeather(FeatherIcons.list),
          // Anda dapat menambahkan ikon-ikon lain sesuai kebutuhan
        ],
      ),
    );
  }

  // Fungsi untuk menghasilkan widget Icon dari ikon Feather Icons
  Widget _iconFromFeather(IconData icon) {
    return InkWell(
      onTap: () {
        // Aksi yang akan diambil ketika ikon diklik
      },
      child: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
