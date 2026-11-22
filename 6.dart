import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
   MaterialApp(
     home: SafeArea(
         child: Scaffold(
           body: Center(
             child: WidgetText(),
           ),
         )
     ),
   )
  );
}

class WidgetText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text('Flutter là bộ công cụ phát triển giao diện người'
        ' dùng (UI) mã nguồn mở do Google tạo ra. Nó cho phép lập trình'
        ' viên xây dựng ứng dụng đa nền tảng mượt mà cho di động, web'
        ' và máy tính để bàn chỉ từ một cơ sở mã nguồn duy nhất, giúp'
        ' tiết kiệm tối đa thời gian phát triển.',
      maxLines: 3,
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis, //sẽ hiện dấu ... khi hết dòng cho phép
      textScaler: TextScaler.linear(1.3),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        // letterSpacing: 7,
        // wordSpacing: 2,
        fontFamily: "Shantell_Sans", // Cần phải tải font về và khai báo trong pubspec
      ),
    );
  }
}