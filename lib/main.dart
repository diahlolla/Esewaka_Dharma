import 'package:e_sewaka_dharma/Profile%20SplashScreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MaterialColor mycolor = MaterialColor(
    Color.fromARGB(255, 118, 77, 29).value,
    <int, Color>{
      50: Color.fromRGBO(255, 118, 77, 0.1),
      100: Color.fromRGBO(255, 118, 77, 0.2),
      200: Color.fromRGBO(255, 118, 77, 0.3),
      300: Color.fromRGBO(255, 118, 77, 0.4),
      400: Color.fromRGBO(255, 118, 77, 0.5),
      500: Color.fromRGBO(255, 118, 77, 0.6),
      600: Color.fromRGBO(255, 118, 77, 0.7),
      700: Color.fromRGBO(255, 118, 77, 0.8),
      800: Color.fromRGBO(255, 118, 77, 0.9),
      900: Color.fromRGBO(255, 118, 77, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: mycolor,
      ),
      home: const SplashScreen(),
    );
  }
}
