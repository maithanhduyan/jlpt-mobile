import 'package:flutter/material.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/routes.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: dPrimaryColor,
            ),
            child: Container(
              child: Text("a"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Hiragana"),
            onTap: () {
              Navigator.pushNamed(context, Routes.kanjibasic);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Katakana"),
            onTap: () {
              Navigator.pushNamed(context, Routes.kanjibasic);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("214 Bộ Thủ Kanji"),
            onTap: () {
              Navigator.pushNamed(context, Routes.kanjibasic);
            },
          ),
        ],
      ),
    );
  }
}
