import 'package:flutter/material.dart';

import 'homeoage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatx',
      theme: ThemeData(
        primaryColor: Color(0xFF004D40),
        accentColor: Color(0xFFE0F2F1)
      ),
      home: Homepage(),
    );

  }
}
