import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_details.dart';
import 'hadeth_tab/hadeth_details.dart';
import 'home/home.dart';
import 'my_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.Route_Name : (context) => HomeScreen(),
        SuraDetails.Route_Name : (context) => SuraDetails(),
        HadethDetails.Route_Name : (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.Route_Name,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}