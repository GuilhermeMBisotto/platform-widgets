import 'package:flutter/material.dart';

abstract class BaseTab<T> extends StatefulWidget {
  const BaseTab({Key key, this.title}) : super(key: key);
  final String title;

  String titlePage() => title;
}
