import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Body(),
      ),
    )
  );
}

Center Body() {
  return Center(
    child: RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(text: 'Nguyễn ', style: TextStyle(color: Colors.pink)),
          TextSpan(text: 'Anh ', style: TextStyle(fontFamily: 'Shantell_Sans')),
          TextSpan(text: 'Tuấn', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
            children: [
              TextSpan(text: '\nTiểu đội 12',style: TextStyle(fontFamily: 'Shantell_Sans', fontWeight: FontWeight(700))),
              TextSpan(text: '\nTrung dội 4',style: TextStyle(fontFamily: 'Shantell_Sans', fontWeight: FontWeight(700))),
              TextSpan(text: '\nĐại đội 2',style: TextStyle(fontFamily: 'Shantell_Sans', fontWeight: FontWeight(700))),
            ]
          )
        ],
      ),
    ),
  );
}