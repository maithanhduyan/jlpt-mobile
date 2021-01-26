import 'package:jlpt/screens/home/home.dart';
import 'package:jlpt/screens/kanjibasic/kanjibasic_screen.dart';

abstract class Routes {
  static const String kanjibasic = '/kanjibasic';
  static const String home = '/home';

  static var initialAppRoute = {
    home: (context) => HomeScreen(),
    kanjibasic: (context) => KanjiBasicScreen(),
  };
}
