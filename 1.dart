import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Widget1(true),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Widget1 extends StatelessWidget {
  final bool isChecked;
  const Widget1(this.isChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return isChecked?Text('On'):Text('Off');
  }
}
