import 'package:flutter/material.dart';

import '../my_theme.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();

}
class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;

  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر' ,
    'لا حول ولا قوه الا بالله' ,
  ];

  int index = 0 ;

  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/head_of_sebha.png'),
                InkWell(
                  onTap: (){
                    onClicked();
                  },
                  child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .07),
                      child: Transform.rotate(
                          angle:angle ,
                          child: Image.asset('assets/images/body_of_sebha.png'))),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Text('عدد التسبيحات',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyThemeData.goldColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('$counter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: MyThemeData.goldColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('${tasbeh[index]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onClicked() {
    counter++;
    if(counter % 33 == 0){
      index++;
    }if(index == tasbeh.length){
      index = 0 ;
    }
    angle += 2/33 ;
    setState(() {

    });

}
}
