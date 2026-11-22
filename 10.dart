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

class BaseItem extends StatelessWidget {
  const BaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: OutlinedButton(
          onPressed: (){print('Ok');},
          child: Text('Base')),
    );
  }
}


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.yellow,
      child: Row(
        // textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceAround, //Bố trí theo trục chính
        crossAxisAlignment: CrossAxisAlignment.stretch, // Bố trí theo trục còn lại
        children: [
          BaseItem(),
          BaseItem(),
          Container(
            width: MediaQuery.sizeOf(context).width*0.1,
            height: double.infinity,
            color: Colors.green,
          ),
          BaseItem(),
      ],),
    );
  }
}