import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: appTheme.blueGray5001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFB847C),
    primaryContainer: Color(0XFFFFFFFF),

    // Error colors
    errorContainer: Color(0X75000000),

    // On colors(text colors)
    onPrimary: Color(0XA2011A51),
    onPrimaryContainer: Color(0XFF727E95),
    onSecondaryContainer: Color(0X82001A51),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue20087 => Color(0X8796D4F1);
  Color get blue300 => Color(0XFF6399F9);
  Color get blue50 => Color(0XFFE0EBFE);
  Color get blue5001 => Color(0XFFE5EDFD);

  // BlueGray
  Color get blueGray50 => Color(0XFFEFF1F4);
  Color get blueGray5001 => Color(0XFFEFF2F4);

  // Gray
  Color get gray100 => Color(0XFFEFF5FE);
  Color get gray300 => Color(0XFFD6E0F2);
  Color get gray30001 => Color(0XFFD8E0F0);
  Color get gray50 => Color(0XFFFBF9FF);
  Color get gray5001 => Color(0XFFFCFCFC);
  Color get gray600 => Color(0XFF808080);
  Color get gray60001 => Color(0XFF848484);

  // Red
  Color get redA100 => Color(0XFFFF8989);
  Color get redA10001 => Color(0XFFFF928E);
  Color get redA10002 => Color(0XFFFF897E);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
