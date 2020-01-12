import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class GameButton{
  final id;
  String text;
  Color bg;
  bool enabled;


  GameButton({this.id,this.text="",this.bg=Colors.grey,this.enabled=true});
  
}