import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/data/kanjilist.dart';
import 'package:jlpt/models/kanjibasic.dart';
import 'package:jlpt/screens/kanjibasic/components/body.dart';

/// KanjiBasic Screen
class KanjiBasicScreen extends StatefulWidget {
  final Future<List<KanjiBasic>> kanjis;

  const KanjiBasicScreen({Key key, this.kanjis}) : super(key: key);

  @override
  _KanjiBasicScreenState createState() => _KanjiBasicScreenState();
}

class _KanjiBasicScreenState extends State<KanjiBasicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dPrimaryColor,
      appBar: buildAppBar(context),
      body: FutureBuilder<List<KanjiBasic>>(
        future: fetchKanjiBasicList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Body(kanjis: snapshot.data);
          } else if (snapshot.hasError) {
            return Text(snapshot.error);
          }
          // By default, show a loading spinner.
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          );
        },
      ),
    );
  }

  /// KanjiBasic AppBar Widget
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: dPrimaryColor,
      leading: IconButton(
        padding: EdgeInsets.only(left: defaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "Trở lại",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
