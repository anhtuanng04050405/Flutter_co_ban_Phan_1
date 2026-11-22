import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Widget2(false),
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

class Widget2 extends StatefulWidget {
  final bool isChecked;
  const Widget2(this.isChecked, {super.key});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  late bool check;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check = widget.isChecked;
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => setState(() {
          check = !check;
        }),
        child: check?Text('On'):Text('Off'),
    );
  }
}
