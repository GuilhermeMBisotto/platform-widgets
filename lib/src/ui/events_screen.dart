import 'package:android_test_layout/src/extensions/color_extensions.dart';
import 'package:android_test_layout/src/base/BaseTab.dart';
import 'package:flutter/material.dart';

class EventsScreenPage extends BaseTab {
  EventsScreenPage({Key key}) : super(key: key, title: "Eventos");

  @override
  _EventsScreenPage createState() => _EventsScreenPage();
}

class _EventsScreenPage extends State<EventsScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tela Eventos", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: "#1D1D27".toColor,
    );
  }
}
