import 'package:android_test_layout/src/extensions/color_extensions.dart';
import 'package:android_test_layout/src/base/BaseTab.dart';
import 'package:flutter/material.dart';

class ProfileScreenPage extends BaseTab {
  ProfileScreenPage({Key key}) : super(key: key, title: "Perfil");

  @override
  _ProfileScreenPage createState() => _ProfileScreenPage();
}

class _ProfileScreenPage extends State<ProfileScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tela Perfil", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: "#1D1D27".toColor,
    );
  }
}
