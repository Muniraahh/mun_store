import 'package:flutter/material.dart';
import 'package:mun_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mun_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mun_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mun_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mun_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mun_store/utils/theme/custom_themes/text_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated.button.theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.indigo[200],
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    chipTheme: MChipTheme.lightChipTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.indigo[200],
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    chipTheme: MChipTheme.darkChipTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
  );
}