import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';

class PlatformTheme extends Diagnosticable {
  /// Creates a [CupertinoTheme] styling specification.
  ///
  /// Unspecified parameters default to a reasonable iOS default style.
  const PlatformTheme(
      {this.brightness,
      this.primaryColor,
      this.primaryContrastingColor,
      this.textTheme,
      this.barBackgroundColor,
      this.scaffoldBackgroundColor});

  final Brightness brightness;
  final Color primaryColor;
  final Color primaryContrastingColor;
  final CupertinoTextThemeData textTheme;
  final Color barBackgroundColor;
  final Color scaffoldBackgroundColor;

  // factory PlatformTheme({
  //   Brightness brightness,
  //   Color primaryColor,
  //   Color primaryContrastingColor,
  //   CupertinoTextThemeData textTheme,
  //   Color barBackgroundColor,
  //   Color scaffoldBackgroundColor,
  // }) 
  // {
    // if (Platform.isAndroid) {
    //   return ThemeData(
    //       brightness: brightness,
    //       primaryColor: primaryColor,
    //       accentColor: primaryContrastingColor,
    //       textTheme: null,
    //       scaffoldBackgroundColor: scaffoldBackgroundColor,
    //       bottomAppBarColor: barBackgroundColor);
    // } else if (Platform.isIOS) {
    //   return CupertinoThemeData(
    //       brightness: brightness,
    //       primaryColor: primaryColor,
    //       primaryContrastingColor: primaryContrastingColor,
    //       textTheme: textTheme,
    //       barBackgroundColor: barBackgroundColor,
    //       scaffoldBackgroundColor: scaffoldBackgroundColor);
    // }
  //   return ThemeData();
  // }

  Diagnosticable createTheme() {
    if (Platform.isAndroid) {
      return ThemeData(
          brightness: this.brightness,
          primaryColor: this.primaryColor,
          accentColor: this.primaryContrastingColor,
          textTheme: null,
          scaffoldBackgroundColor: this.scaffoldBackgroundColor,
          bottomAppBarColor: this.barBackgroundColor);
    } else if (Platform.isIOS) {
      return CupertinoThemeData(
          brightness: this.brightness,
          primaryColor: this.primaryColor,
          primaryContrastingColor: this.primaryContrastingColor,
          textTheme: this.textTheme,
          barBackgroundColor: this.barBackgroundColor,
          scaffoldBackgroundColor: this.scaffoldBackgroundColor);
    }
    return ThemeData();
  }
}
