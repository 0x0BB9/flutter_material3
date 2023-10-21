import 'package:flutter/material.dart';
import 'package:flutter_material_design/themes/customColors.dart';

const TEXT_LARGE_SIZE = 22.0;

class AppThemeData {
  static ThemeData lightThemeData = buildThemeData(lightColorScheme);

  static ThemeData buildThemeData(ColorScheme colorScheme) {
    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        cardTheme: const CardTheme(color: Color(0xff006699)),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xff006699),
            letterSpacing: 4,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: TEXT_LARGE_SIZE,
          ),
        ));
  }

  // Color Refs to Android Material Design
  // https://m3.material.io/styles/color/the-color-system/color-roles
  // 动态主体生成工具 https://m3.material.io/theme-builder#/custom
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF904D00),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDCC3),
    onPrimaryContainer: Color(0xFF2F1500),
    secondary: Color(0xFF745944),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDCC3),
    onSecondaryContainer: Color(0xFF2A1707),
    tertiary: Color(0xFF5C6237),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFE1E7B0),
    onTertiaryContainer: Color(0xFF191E00),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201B17),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201B17),
    surfaceVariant: Color(0xFFF3DFD2),
    onSurfaceVariant: Color(0xFF51443B),
    outline: Color(0xFF847469),
    onInverseSurface: Color(0xFFFAEEE8),
    inverseSurface: Color(0xFF352F2B),
    inversePrimary: Color(0xFFFFB77D),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF904D00),
    outlineVariant: Color(0xFFD6C3B6),
    scrim: Color(0xFF000000),
  );

  static const ColorScheme dartColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB77D),
    onPrimary: Color(0xFF4D2600),
    primaryContainer: Color(0xFF6E3900),
    onPrimaryContainer: Color(0xFFFFDCC3),
    secondary: Color(0xFFE3C0A6),
    onSecondary: Color(0xFF422C1A),
    secondaryContainer: Color(0xFF5A422E),
    onSecondaryContainer: Color(0xFFFFDCC3),
    tertiary: Color(0xFFC5CB96),
    onTertiary: Color(0xFF2E330D),
    tertiaryContainer: Color(0xFF444A21),
    onTertiaryContainer: Color(0xFFE1E7B0),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF201B17),
    onBackground: Color(0xFFECE0DA),
    surface: Color(0xFF201B17),
    onSurface: Color(0xFFECE0DA),
    surfaceVariant: Color(0xFF51443B),
    onSurfaceVariant: Color(0xFFD6C3B6),
    outline: Color(0xFF9E8E82),
    onInverseSurface: Color(0xFF201B17),
    inverseSurface: Color(0xFFECE0DA),
    inversePrimary: Color(0xFF904D00),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB77D),
    outlineVariant: Color(0xFF51443B),
    scrim: Color(0xFF000000),
  );
}
