import 'package:flutter/material.dart';

class MChipTheme {
  MChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withAlpha(0.4 as int),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.indigo[200],
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withAlpha(0.4 as int),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.indigo[200],
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}