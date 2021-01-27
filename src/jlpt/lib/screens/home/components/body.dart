import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/data/course_list.dart';
import 'package:jlpt/screens/home/components/category.dart';
import 'package:jlpt/screens/home/components/course_card.dart';
import 'package:jlpt/screens/kanjibasic/kanjibasic_screen.dart';

/// Home Screen Body
class HomeBody extends StatelessWidget {
  final ValueChanged onChanged;

  const HomeBody({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          CategoryList(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: dBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: courseList.length,
                  itemBuilder: (context, index) => CourseCard(
                    itemIndex: index,
                    course: courseList[index],
                    press: () {
                      print("${courseList[index].content}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KanjiBasicScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
