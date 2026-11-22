import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      )
    )
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 450,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 800,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Container(
          //     width: 450,
          //     height: 150,
          //     decoration: BoxDecoration(
          //       color: Colors.amber,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}