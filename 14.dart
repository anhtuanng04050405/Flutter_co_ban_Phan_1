import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body2(),
        ),
      ),
    )
  );
}

class Body extends StatelessWidget {
  String val = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              print("Thay đổi $value");
              val = value;
            },
          ),
          ElevatedButton(
              onPressed: (){

              }, 
              child: Text('Send')
          ),
          Text(val),
        ],
      )
    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String val = "";
  var textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(
        (){
          setState(() {
            val = textEditingController.text.toUpperCase();
          });
        }
    );
  }
  // @override
  // void dispose() {
  //   textEditingController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              autofocus: false,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.words,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Colors.red,
              cursorWidth: 10,
              cursorRadius: Radius.circular(16),
              maxLines: 1,
              // maxLength: 15,
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                label: Text('Nhập gmail'),
                icon: Icon(Icons.mail),
                hint: Text('abc123'),
                suffix: Text('@gmail.com'),
              ),
            ),
            ElevatedButton(
                onPressed: (){

                },
                child: Text('Send')
            ),
            Text(val),
          ],
        )
    );
  }
}
