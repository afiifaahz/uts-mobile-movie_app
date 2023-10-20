import 'package:flutter/material.dart';
import 'package:ui/screens/detail_movie.dart';
// import 'package:ui/screens/detail_movie.dart';
import 'package:ui/screens/home_screen.dart';
import 'package:ui/screens/list_movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
      ),
      home: SafeArea(child:  HomeScreen()),
    );
  }
}




