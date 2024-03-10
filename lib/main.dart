import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_flutter/pages/home_page.dart';

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
      title: 'Shopping Flutter App',
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: ThemeData(
        useMaterial3: false,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}

