import 'package:flutter/material.dart';
import 'package:hackathon_flutter_2019/ui/home.dart';


void main() {
  runApp(MaterialApp(
    title: 'Cópia do Tinder',
    home: Home(),
    theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.amberAccent
    ),
  ));
}