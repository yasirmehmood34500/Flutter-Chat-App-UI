import 'package:chat_app_ui/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF2F4B63),),
      home: HomePage(),
    );
  }
}
