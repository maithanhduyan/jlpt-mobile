import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlpt/contants.dart';
import 'package:jlpt/screens/kanjibasic/kanjibasic_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JLPT',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: dPrimaryColor,
        accentColor: dPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KanjiBasicScreen(),
      
    );
  }
}
