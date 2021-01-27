import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlpt/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List category = ["Home", "Hiragana", "Katakana", "Kanji", "214 Bộ Thủ"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: defaultPadding,
              right: index == category.length - 1 ? defaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              category[index],
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void buildNavigator() => Navigator;
}
