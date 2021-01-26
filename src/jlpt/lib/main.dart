import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/routes.dart';
import 'package:jlpt/screens/home/home.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final String title = "JLPT";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: dPrimaryColor,
        accentColor: dPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: title),
      routes: Routes.initialAppRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
