import 'package:flutter/material.dart';
import 'package:jlpt/contants.dart';
import 'package:jlpt/data/kanjilist.dart';
import 'package:jlpt/models/kanjibasic.dart';
import 'package:jlpt/screens/kanjibasic/components/body.dart';

/// KanjiBasic Screen
class KanjiBasicScreen extends StatelessWidget {
  final Future<List<KanjiBasic>> kanjis;

  const KanjiBasicScreen({Key key, this.kanjis}) : super(key: key);

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
          return CircularProgressIndicator();
        },
      ),
    );
  }

  /// KanjiBasic AppBar Widget
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: dBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(left: defaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "Trở lại",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
