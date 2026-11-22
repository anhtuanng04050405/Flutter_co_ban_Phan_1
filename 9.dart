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
    return Container(
      padding: EdgeInsets.all(20),
      child: ElevatedButton.icon(
          onPressed: (){
            print("HUST");
          },
          icon: const Icon(Icons.camera),
          label: const Text('Mở camera'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            //backgroundColor: Colors.pink,
            foregroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(8)),
            elevation: 8,
            shadowColor: Colors.green.withOpacity(0.5),
            fixedSize: Size(200, 200),
            side: BorderSide(width: 5,  color: Colors.limeAccent),
          ),
      ),
    );
  }
}