import 'package:flutter/material.dart';

class MyThemeData{
  static Color goldColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Colors.white;

  static final ThemeData lightMode = ThemeData(
    primaryColor: goldColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
      //  fontSize: 30,
        fontWeight: FontWeight.bold,
          color: blackColor,
      ),
    ),

    
  );
  static final ThemeData darkMode = ThemeData(


  );
}