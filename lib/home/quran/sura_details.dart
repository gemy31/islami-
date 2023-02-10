import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/sura_details_item.dart';
import 'package:islami_app/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String Route_Name = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    loadFile(args.index);

    return Stack(
      children: [
        Image.asset(
          'assets/images/background_image.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.name}',
            ),
          ),
          body: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                    color: MyThemeData.goldColor,
                  ),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return SuraDetailsItem(text: verses[index], index: index);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: MyThemeData.goldColor,
                      thickness: 2,
                    );
                  },
                  itemCount: verses.length),
        ),
      ],
    );
  }

  loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
