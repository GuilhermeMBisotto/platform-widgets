import 'package:android_test_layout/src/platform/custom/PlatformTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PlatformApp extends StatefulWidget {
  final Widget home;
  final PlatformTheme platformTheme;

  PlatformApp({@required this.home, this.platformTheme});

  CupertinoApp _createIosApp(BuildContext context) {
    return CupertinoApp(
      home: home,
      theme: platformTheme.createTheme(),
    );
  }

  MaterialApp _createAndroidApp(BuildContext context) {
    return MaterialApp(
      home: home,
      theme: platformTheme.createTheme(),
    );
  }

  @override
  _PlatformAppState createState() => _PlatformAppState(
      cupertino: (context) => _createIosApp(context),
      material: (context) => _createAndroidApp(context),
      home: home);
}

class _PlatformAppState<I, A> extends State<PlatformApp> {
  Function cupertino;
  Function material;
  Widget home;

  _PlatformAppState({this.cupertino, this.material, @required this.home});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return this.cupertino(context);
    } else if (Platform.isAndroid) {
      return this.material(context);
    }
    return Container();
  }
}
