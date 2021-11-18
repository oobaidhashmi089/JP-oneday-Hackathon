import 'package:flutter/material.dart';
import 'package:flutter_application_02/Login.dart';
import 'package:flutter_application_02/homesrc.dart';
import 'package:flutter_application_02/splashsrc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini HAk',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, foregroundColor: Colors.pink),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.pink),

        // fontFamily: ThemeData(GoogleFonts.lato())

        primarySwatch: Colors.pink,
      ),
      home: Homesrc(),
    );
  }
}
