import 'package:android_test_layout/src/extensions/color_extensions.dart';
import 'package:android_test_layout/src/base/BaseTab.dart';
import 'package:android_test_layout/src/platform/custom/PlatformAppBarWidget.dart';
import 'package:android_test_layout/src/platform/custom/PlatformScaffold.dart';
import 'package:android_test_layout/src/ui/events_screen.dart';
import 'package:android_test_layout/src/ui/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeTabController extends StatefulWidget {
  const HomeTabController({Key key}) : super(key: key);

  @override
  _HomeTabController createState() => _HomeTabController();
}

class _HomeTabController extends State<HomeTabController>
    with SingleTickerProviderStateMixin {
  List<BaseTab> tabs = [EventsScreenPage(), ProfileScreenPage()];

  TabController _tabController;
  Color tabColor = getTabBackgroundColor();

  static Color getTabBackgroundColor() {
    try {
      return "#1D1D27".toColor;
    } catch (error) {
      print(error.toString());
      return Colors.white;
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: PlatformScaffold(
        child: TabBarView(
          controller: _tabController,
          children: [
            for (final tab in tabs) tab,
          ],
        ),
        appbar: PlatformAppBarWidget(
          title: Text("Title", style: TextStyle(color: Colors.white)),
          backgroundColor: tabColor,
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              for (final tab in tabs) Tab(text: tab.title),
            ],
          ),
        ),
        backgroundColor: tabColor,
      ),
    );
  }
}
