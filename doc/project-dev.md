# Project Guides
#### [Install Flutter and Dart](https://flutter.dev/docs/get-started/install)

>git clone https://github.com/flutter/flutter.git -b stable
- 1. Git clone Flutter
- 2. Update your path 
- 3. Run Doctor Flutter (On Windows : C:\src\flutter>flutter doctor)
      > flutter doctor
- 4. Install Android Studio
- 5. Set up the Android emulator

- Sample App on GitHub
  >https://flutter.github.io/samples/#

- Create new project

  > flutter create jlpt

  > cd jlpt

- Run the App
- Check that an Android device is running. If none are shown, follow the device-specific instructions on the Install page for your OS.

  > flutter devices
  > flutter run

- Update package in pubspec.yaml

  > flutter pub get

- Android emulator uses http://10.0.2.2 for pointing to the localhost
  > http://10.0.2.2:8080/api/users

#### Project folder structure

--lib
  -- screens
    --
  -- main.dart

### Extensions for Flutter and Dart

- [Turn On: Dart:Preview Flutter Ui Guides]('https://dartcode.org/releases/v3-1/#preview-flutter-ui-guides')
I suggest you go in the settings and enable the Dart:Preview Flutter Ui Guides option. That will make it really easy to spot the parent-child relationships in your code, which is particularly useful when you have many nested widgets in your UI files.
  > Settings > Dart:Preview Flutter Ui Guides > 
- [Bracket Pair Colorizer 2]()
- [Pubspec Assist]()
- [Material Icon Theme]()
- [Better comments]()
- [Todo tree]()
- [Color Highlight]()
- [Image Preview]()
#### Reference Links
- [Must-have VS Code extensions for working with Flutter](https://medium.com/flutter-community/must-have-vs-code-extensions-for-working-with-flutter-e31a421b9c68)
- [Flutter — Visual Studio Code Extensions for Fast and Efficient Development]('https://medium.com/flutter-community/flutter-visual-studio-code-extensions-for-fast-and-efficient-development-fdd569c6abd4')

