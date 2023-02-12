import 'package:flutter/material.dart';
import 'package:islami_app/providers/provider.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: (){
            provider.changeAppLanguage('en');
            },
            child: provider.appLanguage=='en' ?
                getSelectedItemBottomSheet('English')
                : getUnSelectedItemBottomSheet('English')
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
             provider.changeAppLanguage('ar');
            },
            child:provider.appLanguage=='ar'? 
                getSelectedItemBottomSheet('Arabic')
                : getUnSelectedItemBottomSheet('Arabic')
          ),
        ],
      ),
    );
  }

   getSelectedItemBottomSheet(String text){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: MyThemeData.goldColor,
            fontSize: 25,
          ),
        ),
        Icon(Icons.check,color: MyThemeData.goldColor,)
      ],
    );
  }
  getUnSelectedItemBottomSheet(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: MyThemeData.blackColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
