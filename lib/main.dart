import 'package:flutter/material.dart';
import 'package:islami_app/providers/provider.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:provider/provider.dart';
import 'hadeth_tab/hadeth_details.dart';
import 'home/home.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.Route_Name: (context) => HomeScreen(),
        SuraDetails.Route_Name: (context) => SuraDetails(),
        HadethDetails.Route_Name: (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.Route_Name,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
