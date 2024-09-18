import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
final ColorScheme lightColorScheme = ColorScheme.light(
  brightness: Brightness.light,
  primary: const Color(0xff0000ba),
  onPrimary: const Color(0xffffffff),
  primaryContainer: const Color(0xffe0e0ff),
  onPrimaryContainer: const Color(0xff00006e),
  secondary: const Color(0xff4a6361),
  onSecondary: const Color(0xffffffff),
  secondaryContainer: const Color(0xffcce8e6),
  onSecondaryContainer: const Color(0xff051f1e),
  tertiary: const Color(0xff386665),
  onTertiary: const Color(0xffffffff),
  tertiaryContainer: const Color(0xffbbecea),
  onTertiaryContainer: const Color(0xff002020),
  error: const Color(0xffba1a1a),
  onError: const Color(0xffffffff),
  errorContainer: const Color(0xffffdad6),
  onErrorContainer: const Color(0xff410002),
  surface: const Color.fromARGB(255, 195, 193, 195),
  onSurface: const Color(0xff1b1b1f),
  onSurfaceVariant: const Color(0xff46464f),
  outline: const Color(0xff777680),
  outlineVariant: const Color(0xffc7c5d0),
  shadow: const Color(0xff000000),
  scrim: const Color(0xff000000),
  inverseSurface: const Color(0xff2f2f34),
  onInverseSurface: const Color(0xfff3eff4),
  inversePrimary: const Color(0xffbfc2ff),
  surfaceTint: const Color(0xff4049e0),
);

// ignore: prefer_const_constructors
final ColorScheme darkColorScheme = ColorScheme.dark(
  brightness: Brightness.dark,
  primary: const Color(0xffbfc2ff),
  onPrimary: const Color(0xff0000ac),
  primaryContainer: const Color(0xff232ac9),
  onPrimaryContainer: const Color(0xffe0e0ff),
  secondary: const Color(0xffb0ccca),
  onSecondary: const Color(0xff1b3533),
  secondaryContainer: const Color(0xff324b4a),
  onSecondaryContainer: const Color(0xffcce8e6),
  tertiary: const Color(0xffa0cfce),
  onTertiary: const Color(0xff003736),
  tertiaryContainer: const Color(0xff1e4e4d),
  onTertiaryContainer: const Color(0xffbbecea),
  error: const Color(0xffffb4ab),
  onError: const Color(0xff690005),
  errorContainer: const Color(0xff93000a),
  onErrorContainer: const Color(0xffffb4ab),
  surface: const Color(0xff1b1b1f),
  onSurface: const Color(0xffe5e1e6),
  onSurfaceVariant: const Color(0xffc7c5d0),
  outline: const Color(0xff918f9a),
  outlineVariant: const Color(0xff46464f),
  shadow: const Color(0xff000000),
  scrim: const Color(0xff000000),
  inverseSurface: const Color(0xffe4e0e6),
  onInverseSurface: const Color(0xff303034),
  inversePrimary: const Color(0xff4049e0),
  surfaceTint: const Color(0xffbfc2ff),
);

final ThemeData lightTheme = ThemeData(
  colorScheme: lightColorScheme,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: darkColorScheme,
);
