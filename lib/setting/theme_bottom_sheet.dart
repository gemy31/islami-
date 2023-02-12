import 'package:flutter/material.dart';
import 'package:islami_app/providers/provider.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class ThemeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeAppTheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light ?
                getSelectedBottomSheet('Light Mood')
                : getUnSelectedBottomSheet('Light Mood')
    ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              provider.changeAppTheme(ThemeMode.dark);
            },
            child: provider.appTheme==ThemeMode.dark ?
                getSelectedBottomSheet('Dark Mood')
                : getUnSelectedBottomSheet('Dark Mood')
          ),
        ],
      ),
    );
  }
  getSelectedBottomSheet(String text){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(text,
        style: TextStyle(
          fontSize: 25,
          color: MyThemeData.goldColor
        ),),
    Icon(Icons.check,color: MyThemeData.goldColor,),
    ],);
    }
  getUnSelectedBottomSheet(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(
              fontSize: 20,
              color: MyThemeData.blackColor
          ),),
      ],);
  }
}
