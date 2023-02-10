import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_item.dart';
import 'package:islami_app/my_theme.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(child: Image.asset('assets/images/quran-top.png'),),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Divider(
                color: MyThemeData.goldColor,
                thickness: 2,
              ),
              Text('Sura Name',
              style: Theme.of(context).textTheme.titleLarge,
              ),
              Divider(
                color: MyThemeData.goldColor,
                thickness: 2,
              ),
              Expanded(child: ListView.separated(
                itemBuilder: (context,index) => SuraItem(text:suraName[index],index: index),
                separatorBuilder: (context,index) => Divider(
                  color: MyThemeData.goldColor,
                  thickness: 2,
                ),
                itemCount: suraName.length,
              ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
