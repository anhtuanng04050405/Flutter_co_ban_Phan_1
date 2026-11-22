import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    )
  );
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.loose,
          child: Container(
            child: Text('Nguyễn'),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: Container(
            color: Colors.lime,
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 3,
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}