import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String text ;
  int index ;
  SuraDetailsItem({required this.text , required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}
