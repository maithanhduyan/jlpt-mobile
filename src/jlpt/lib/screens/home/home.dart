import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jlpt/contants.dart';
import 'package:jlpt/models/kanjibasic.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: dPrimaryColor,
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
      title: Text('Back'),
    );
  }
}

class KanjiList extends StatelessWidget {
  final List<KanjiBasic> kanjis;

  KanjiList({Key key, this.kanjis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      padding: const EdgeInsets.all(0),
      itemCount: kanjis.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: Text(""),
        );
      },
    );
  }
}
