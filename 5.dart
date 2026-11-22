import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: Body(),
          )
        ),
      )
  );
}

class Body extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
          height: 250,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          alignment: Alignment.center,
          child: Text('Hello World'),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 10,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 10),
                blurRadius: 20,
                color: Colors.pink,
              )
            ]
          ),
          transform: Matrix4.rotationZ(pi/4),
      ),
    );
  }
}
