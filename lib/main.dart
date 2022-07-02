import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Overriding primarySwatch
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeRoute: (context) => const Home(),
        MyRoutes.loginRoute: (context) => const Login()
      },
    );
  }
}
