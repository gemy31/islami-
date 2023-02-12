import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../my_theme.dart';
import 'hadeth_item.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethModels = [];

  @override
  Widget build(BuildContext context) {
    if (hadethModels.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(child: Image.asset('assets/images/hadeth_image.png'),),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Divider(
                color: MyThemeData.goldColor,
                thickness: 2,
              ),
              Text('Hadeth Name',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
              ),
              Divider(
                color: MyThemeData.goldColor,
                thickness: 2,
              ),
              Expanded(child: hadethModels == 0 ? Center(
                child: CircularProgressIndicator(
                  color: MyThemeData.goldColor,),
              ) :
                ListView.separated(
                  itemBuilder: (context, index) => HadethItem(hadeth: hadethModels[index]),
                  separatorBuilder: (context, index) =>
                      Divider(
                        color: MyThemeData.goldColor,
                        thickness: 2,
                      ),
                  itemCount: hadethModels.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString(
        'assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      Hadeth hadeth = Hadeth(title: title, content: content);
      hadethModels.add(hadeth);
      setState(() {

      });
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}