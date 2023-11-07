import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 255, 255, 255);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blueGrey,
  Colors.teal,
  Colors.green,
  Colors.cyan,
  Colors.pinkAccent,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Solo se encuentra los Colores en un rango de 0 a ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
