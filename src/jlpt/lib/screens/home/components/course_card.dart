import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/models/course.dart';

class CourseCard extends StatelessWidget {
  final int itemIndex;
  final Course course;
  final Function press;

  const CourseCard({Key key, this.itemIndex, this.course, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 0,
      ),
      
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    defaultShadow,
                  ]),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${course.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                  ),
                  height: 160,
                  width: 200,
                  child: Text(""),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                      ),
                      child: Text(
                        "${course.name}",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5, // 30
                        vertical: defaultPadding / 4, // 5
                      ),
                      child: Text("${course.content}"),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
