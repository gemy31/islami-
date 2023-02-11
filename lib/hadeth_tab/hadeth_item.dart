import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_details.dart';

import '../../my_theme.dart';
import 'hadeth_details.dart';
import 'hadeth_tab.dart';

class HadethItem extends StatelessWidget {
  Hadeth hadeth ;

  HadethItem({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadethDetails.Route_Name,
            arguments: Hadeth(title: hadeth.title, content: hadeth.content)
        );
      },
      child: Text(
        hadeth.title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: MyThemeData.blackColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}