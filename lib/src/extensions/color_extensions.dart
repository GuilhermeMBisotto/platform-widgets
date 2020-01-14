import 'dart:ui';

extension ColorExt on String {
  Color get toColor => _fromHex(this);

  // Exemplo utilizando parametro passado... 
  // este caso é interessante quando, por exemplo, for realizada a conversão de uma data, 
  // sendo o this parametro do miliseconds e o parametro da função sendo o pattern.
  // Color a(String color) => _fromHex(color);

  static Color _fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }

    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }

    throw ("Error in Hex color.");
  }
}
