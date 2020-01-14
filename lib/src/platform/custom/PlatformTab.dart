import 'package:android_test_layout/src/platform/base/PlatformWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformATabBar
    extends PlatformWidget<CupertinoTabScaffold, TabBar> {
  
  PlatformATabBar();

  @override
  TabBar createAndroidWidget(BuildContext context) {
    return TabBar(tabs: <Widget>[],);
  }

  @override
  CupertinoTabScaffold createIosWidget(BuildContext context) {
    return CupertinoTabScaffold(tabBar: null, tabBuilder: (BuildContext context, int index) {  },);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false;
  }
}
