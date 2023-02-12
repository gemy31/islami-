import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light ;
  void changeAppTheme(ThemeMode newMode){
    if(newMode == appTheme){
      return;
    }
    appTheme = newMode ;
    notifyListeners();
  }
  void changeAppLanguage(String newLanguage){
    if(appLanguage == newLanguage){
      return;
    }
    appLanguage = newLanguage ;
    notifyListeners();
  }



}