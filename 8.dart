import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    CupertinoApp(
      home: SafeArea(
        child: CupertinoPageScaffold(
          child: Body(),
        ),
      ),
    )
  );
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context); //size(width, height)
    final padding = MediaQuery.paddingOf(context); //vùng bị che: tai thỏ, home indicator
    final keyboard = MediaQuery.viewInsetsOf(context); // chiều cao bàn phím
    final dpr = MediaQuery.devicePixelRatioOf(context);
    final orientation = MediaQuery.orientationOf(context); //trả về hướng của màn hình
    return Center(
      child: Container(
        height: size.height*0.8,
        width: size.width*0.8,
        child: Text(
            'Size: ${size}\n'
            'Padding: ${padding}\n'
            'Keyboard: ${keyboard}\n'
            'dpr: ${dpr}\n'
            'Orientation: ${orientation}\n'
        ),
      )
    );
  }
}