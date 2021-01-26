import 'package:flutter/material.dart';
import 'package:jlpt/constants.dart';
import 'package:jlpt/screens/home/components/drawer.dart';

class HomeScreen extends StatefulWidget {
  final String title ;

  const HomeScreen({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeScreenState(title);
}

class _HomeScreenState extends State<HomeScreen> {
final String title ;

  _HomeScreenState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: NavigationDrawer(),
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
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {},
        ),
      ],
      title: Text("$title",textAlign: TextAlign.center,),
    );
  }
}


