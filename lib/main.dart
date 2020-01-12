import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/HomePage.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
      home: new HomePage(),
    );
  }
}