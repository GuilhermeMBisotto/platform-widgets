import 'package:android_test_layout/src/platform/base/PlatformWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends PlatformWidget<CupertinoPageScaffold, Scaffold> {
  final String title;
  final Widget child;
  final Widget appbar;
  final Color backgroundColor;

  PlatformScaffold({this.title, this.child, this.appbar, this.backgroundColor});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: child,
      backgroundColor: backgroundColor,
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appbar,
      child: child,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false;
  }
}
