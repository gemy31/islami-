import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio_tab.dart';
import 'package:islami_app/home/tasbeh_tab.dart';
import 'package:islami_app/my_theme.dart';
import '../hadeth_tab/hadeth_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String Route_Name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
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
              'Islami',
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.goldColor,
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index){
                currentIndex = index ;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                  ),
                  label: 'Quran'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                    ),
                    label: 'Hadeth'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_radio.png'),
                    ),
                    label: 'Radio'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_sebha.png'),
                    ),
                    label: 'Sebha'
                ),
              ],
            ),
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
  List<Widget> tabs = [QuranTab(),HadethTab(),RadioTab(),TasbehTab()];
}
