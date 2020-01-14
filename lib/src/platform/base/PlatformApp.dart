import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class PlatformApp extends StatefulWidget {
  @override
  _PlatformAppState createState() => null;
}

abstract class _PlatformAppState<I extends CupertinoApp, A extends MaterialApp>
    extends State<PlatformApp> {
  I _createIosApp(BuildContext context);
  A _createAndroidApp(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return _createIosApp(context);
    } else if (Platform.isAndroid) {
      return _createAndroidApp(context);
    }
    return Container();
  }
}
