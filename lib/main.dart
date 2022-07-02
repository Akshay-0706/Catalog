import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Overriding primarySwatch
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const Login(),
        "/home": (context) => const Home(),
        "/login": (context) => const Login()
      },
    );
  }
}
