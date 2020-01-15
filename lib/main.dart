import 'package:android_test_layout/src/platform/base/PlatformApp.dart';
import 'package:android_test_layout/src/platform/custom/PlatformTheme.dart';
import 'package:android_test_layout/src/ui/HomeTabController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './src/extensions/color_extensions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      platformTheme: PlatformTheme(
        primaryColor: "#1D1D27".toColor,
        primaryContrastingColor: "#34C444".toColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeTabController();
  }
}
