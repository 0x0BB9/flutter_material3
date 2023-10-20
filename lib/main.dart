import 'package:flutter/material.dart';
import 'package:flutter_material_design/sign.dart';
import 'package:flutter_material_design/themes/customColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: CustomColors.mainColor,
            brightness: Brightness.light).copyWith(
          background: Colors.amber
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: CustomColors.mainColor, brightness: Brightness.dark),
      ),
      home: SignPage(),
    );
  }
}
