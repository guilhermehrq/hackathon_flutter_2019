import 'package:flutter/material.dart';
import 'package:hackathon_flutter_2019/ui/login.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutterin',
    home: Login(),
    theme: ThemeData(
        primaryColor: Color.fromRGBO(86, 196, 245, 1),
//        brightness: Brightness.dark,
        accentColor: Color.fromRGBO(0, 87, 155, 1)
    ),
  ));
}