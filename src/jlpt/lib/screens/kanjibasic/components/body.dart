import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jlpt/models/kanjibasic.dart';

/// Body of KanjiScreen
class Body extends StatelessWidget {
  final List<KanjiBasic> kanjis;

  const Body({Key key, this.kanjis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      padding: const EdgeInsets.all(5),
      itemCount: kanjis.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: KanjiCard(kanjiBasic: kanjis[index]),
          color: Colors.white,
        );
      },
    );
  }
}

class KanjiCard extends StatelessWidget {
  final KanjiBasic kanjiBasic;

  const KanjiCard({Key key, this.kanjiBasic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            kanjiBasic.name,
            style: TextStyle(fontSize: 80),
          ),
          Spacer(),
          Text(
            kanjiBasic.content,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
