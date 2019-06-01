import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [
                Color.fromRGBO(0, 87, 155, 1),
                Color.fromRGBO(86, 196, 245, 1),
              ],
            )
        ),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'João Vitor Rodrigues',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Desafios: 10',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      child: Text('J'),
                    ),
                  )
                  ,
                ],
              ),
            ),
            _contactCard(context, 1),
            _contactCard(context, 2),
            _contactCard(context, 3),
            _contactCard(context, 4),
            _contactCard(context, 5),
            _contactCard(context, 6),
            _contactCard(context, 7),
            _contactCard(context, 8),
            _contactCard(context, 9),
            _contactCard(context, 10),
            _contactCard(context, 11),
          ],
        ),
      ),
    );
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
