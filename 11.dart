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
    return Center(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Home'),
                Text('Setting'),
                Text('About'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text('YYYY/MM/DD'), flex: 3,),
                      Expanded(child: Text('YYYY'), flex: 1,),
                      Expanded(child: Text('MM'), flex: 1,),
                      Expanded(child: Text('DD'), flex: 1,),
                    ],
                  ),
                  Text('Test'),
                  Text('Ok'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}