import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: 10,
            itemBuilder: (context, index) {
              return _contactCard(context, index);
            }));
  }
}

Widget _contactCard(BuildContext context, int index) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.all(2.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 4.0),
                          child: Text('#1', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.green),),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 4.0),
                          child: Text('How are you?', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4.0),
                      child: Text('dsd sds s s ds dsds  sds ss sdsd sdsdsdsdsds?', style: TextStyle(fontSize: 16.0,),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
