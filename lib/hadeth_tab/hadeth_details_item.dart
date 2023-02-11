import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget {
List<String> content ;
HadethDetailsItem({required this.content});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Text('$content',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
