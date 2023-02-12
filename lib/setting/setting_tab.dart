import 'package:flutter/material.dart';
import 'package:islami_app/setting/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';
import '../providers/provider.dart';
import 'language_bottom_sheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',
          style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyThemeData.goldColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage =='en'?'English':'Arabic',
                    style: Theme.of(context).textTheme.titleLarge,),
                  Icon(Icons.arrow_drop_down_outlined,size: 40,)
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Theme',
            style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              showThemeBottomsheet();
            },
            child: Container (
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyThemeData.goldColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appTheme==ThemeMode.light?'Light Mood':'Dark Mood',
                    style: Theme.of(context).textTheme.titleLarge,),
                  Icon(Icons.arrow_drop_down_outlined,size: 40,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => LanguageBottomSheet()
    );
  }

  void showThemeBottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeBottomSheet()
    );
  }
}
