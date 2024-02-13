import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidanportfolio/constants/colors.dart';
import 'package:zidanportfolio/pages/home_page.dart';
import 'package:zidanportfolio/prefrence/user_prefrence.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPrefrence.initHve();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Applane',
      themeMode: UserPrefrence.isModeDark ? ThemeMode.dark : ThemeMode.light,
      theme: lightTheme,
      darkTheme: ThemeData.dark(),
      // darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}

// Light Theme
final lightTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xffB5A692)), // Set the color here
    ),
  ),
  brightness: Brightness.light,
  buttonTheme: ButtonThemeData(buttonColor: Color(0xffB5A692)),
  primaryColor: Color(0xffB5A692),
  appBarTheme: AppBarTheme(
    color: Color(0xffB5A692), // Light Gray
  ),
  textTheme: TextTheme(
    headline1: TextStyle(color: Color(0xFF333333)), // Dark Gray
  ),
  cardColor: Color(0xffFFFFFF),
  cardTheme: CardTheme(
    shadowColor: Color(0xFFE0E0f3), // Light Gray
  ),
  scaffoldBackgroundColor: Color(0xffF8ECEC),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.white,
  ),
  bottomAppBarColor: Color(0xFFF0F0F0), // Light Gray
);

// Dark Theme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xff292E38),
  appBarTheme: AppBarTheme(
    color: Color(0xFF292E38), // Dark Gray
  ),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
  ),
  cardColor: Color(0xFF333333), // Dark Gray
  cardTheme: CardTheme(
    shadowColor: Color(0xFF555555), // Medium Gray
  ),
  scaffoldBackgroundColor: Color(0xFF121212), // Almost Black
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Color(0xFF333333), // Dark Gray
  ),
  bottomAppBarColor: Color(0xFF212121), // Dark Gray
);
